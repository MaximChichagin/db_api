# app/routers/staff.py
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app import crud, schemas
from app.db import get_db

router = APIRouter()

# Получение данных по управлению подписками
@router.get("/subscriptions")
def manage_subscriptions(db: Session = Depends(get_db)):
    # Выполняем SQL-запрос для получения данных из представления "Управление_подписками"
    subscriptions = db.execute('SELECT * FROM "Управление_подписками"').fetchall()
    return subscriptions

# Контроль просмотров (например, для отчета сотруднику)
@router.get("/viewings")
def control_viewings(db: Session = Depends(get_db)):
    # Выполняем SQL-запрос для получения данных из представления "Контроль_просмотров"
    viewings = db.execute('SELECT * FROM "Контроль_просмотров"').fetchall()
    return viewings
