# app/routers/admin.py
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.db import get_db

router = APIRouter()

# Выполнение произвольного SQL-запроса (доступно только администраторам)
@router.post("/execute_sql")
def execute_sql(query: str, db: Session = Depends(get_db)):
    try:
        # Выполнение SQL-запроса
        result = db.execute(query)
        db.commit()
        
        # Если запрос вернул данные, возвращаем их
        if result.returns_rows:
            rows = result.fetchall()
            return {"status": "success", "data": rows}
        else:
            return {"status": "success", "message": "Query executed successfully"}

    except Exception as e:
        # В случае ошибки откатываем транзакцию и возвращаем сообщение об ошибке
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
