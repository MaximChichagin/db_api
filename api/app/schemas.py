# app/schemas.py
from pydantic import BaseModel
from typing import Optional, List
from datetime import date, time

class UserBase(BaseModel):
    ФИО: str
    email: str
    Дата_рождения: date
    Дата_регистрации: date

    class Config:
        from_attributes = True

class UserCreate(UserBase):
    pass

class UserResponse(UserBase):
    ID_пользователя: int

    class Config:
        from_attributes = True

class MovieBase(BaseModel):
    Название: str
    Жанр: str
    Год_выпуска: int
    Режиссер: str
    Продолжительность: time

    class Config:
        from_attributes = True

class MovieResponse(MovieBase):
    ID_фильма: int

    class Config:
        from_attributes = True

class WatchHistoryResponse(BaseModel):
    Название_фильма: str
    Дата_и_время_просмотра: str
    Жанр_фильма: str

    class Config:
        from_attributes = True
