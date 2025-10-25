import secrets
import hashlib
from db.db import SessionDep
from app.models import APIKey
from typing import Optional

from app.models import APIKey
import secrets, hashlib
from sqlmodel import Session

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

def verify_key(key: str, session: Session) -> Optional[APIKey]:
    ...