# app/routers/user.py
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app import crud, schemas
from app.db import get_db

router = APIRouter()

# Получение рекомендованных фильмов (доступно для роли пользователя)
@router.get("/recommended_movies")
def get_recommended_movies(db: Session = Depends(get_db)):
    # Выполняем SQL-запрос для получения данных из представления "Рекомендованные_фильмы"
    viewings = db.execute('SELECT * FROM "Рекомендованные_фильмы"').fetchall()
    return viewings


@router.get("/viewing_history")
def viewing_history(db: Session = Depends(get_db)):
    # Выполняем SQL-запрос для получения данных из представления "История_просмотров"
    viewings = db.execute('SELECT * FROM "История_просмотров"').fetchall()
    return viewings
