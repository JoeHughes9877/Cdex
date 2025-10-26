# app/auth.py
import secrets
import hashlib
from fastapi import Depends, HTTPException, status
from sqlmodel import Session, select
from app.models import APIKey
from db.db import SessionDep  

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


def api_key_auth(key: str, session: Session = Depends(SessionDep)):
    hashed_key = hashlib.sha256(key.encode()).hexdigest()

    stmt = select(APIKey).where(APIKey.api_key_hash == hashed_key)
    found = session.exec(stmt).first()

    if not found:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid API key",
        )

    return True
