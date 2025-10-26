import secrets
import hashlib
from fastapi import Depends, HTTPException, status
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials 
from sqlmodel import Session, select
from app.models import APIKey
from db.db import get_session

security_scheme = HTTPBearer(scheme_name="API Key Auth")
 
def create_read_only_key(session: Session):
    key = secrets.token_urlsafe(16)
    hashed_key = hashlib.sha256(key.encode()).hexdigest()

    api_key_instance = APIKey(
        api_key_hash=hashed_key,
        uses=0,
        type="read"
    )

    session.add(api_key_instance)
    session.commit()
    session.refresh(api_key_instance) 
    return key


def read_auth(auth_header: HTTPAuthorizationCredentials = Depends(security_scheme)):
    key = get_key(auth_header.credentials)

    if not key or key.type not in ["read", "write" ,"admin"]:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid API key",
        )
    return True
        
def write_auth(auth_header: HTTPAuthorizationCredentials = Depends(security_scheme)):
    key = get_key(auth_header.credentials)

    if not key or key.type not in ["write" ,"admin"]:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid API key",
        )
    return True

def admin_auth(auth_header: HTTPAuthorizationCredentials = Depends(security_scheme)):
    key = get_key(auth_header.credentials)

    if not key or key.type not in ["admin"]:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid API key",
        )
    return True

def get_key(key):
    hashed_key = hashlib.sha256(key.encode()).hexdigest()

    '''get_session() yields a session via dependency injection.
    directly calling returns a generator, so we use next() to get the actual Session object. '''
    session = next(get_session())

    stmt = select(APIKey).where(APIKey.api_key_hash == hashed_key)
    key_data = session.exec(stmt).first()

    if not key_data:
        return False
    return key_data
