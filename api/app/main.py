# app/main.py
from fastapi import FastAPI
from app.routers import auth, user, staff, admin
from app.db import Base, engine

# Создаем экземпляр приложения
app = FastAPI()

# Инициализируем модели базы данных
Base.metadata.create_all(bind=engine)

# Подключаем маршруты
app.include_router(auth.router, prefix="/auth", tags=["auth"])
app.include_router(user.router, prefix="/user", tags=["user"])
app.include_router(staff.router, prefix="/staff", tags=["staff"])
app.include_router(admin.router, prefix="/admin", tags=["admin"])

# Главная страница
@app.get("/")
def root():
    return {"message": "API для онлайн-кинотеатра работает"}
