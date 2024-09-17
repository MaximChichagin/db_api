# app/crud.py
from sqlalchemy.orm import Session
from app import models, schemas

# Получение пользователя по email
def get_user_by_email(db: Session, email: str):
    return db.query(models.User).filter(models.User.email == email).first()

# Получение пользователя по ID
def get_user(db: Session, user_id: int):
    return db.query(models.User).filter(models.User.ID_пользователя == user_id).first()

# Получение всех пользователей
def get_users(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.User).offset(skip).limit(limit).all()

# Создание нового пользователя
def create_user(db: Session, user: schemas.UserCreate):
    db_user = models.User(
        ФИО=user.ФИО,
        email=user.email,
        Дата_рождения=user.Дата_рождения,
        Дата_регистрации=user.Дата_регистрации
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

# Получение фильма по ID
def get_movie(db: Session, movie_id: int):
    return db.query(models.Movie).filter(models.Movie.ID_фильма == movie_id).first()

# Получение всех фильмов
def get_movies(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.Movie).offset(skip).limit(limit).all()

# Создание нового фильма
def create_movie(db: Session, movie: schemas.MovieBase):
    db_movie = models.Movie(
        Название=movie.Название,
        Жанр=movie.Жанр,
        Год_выпуска=movie.Год_выпуска,
        Режиссер=movie.Режиссер,
        Продолжительность=movie.Продолжительность
    )
    db.add(db_movie)
    db.commit()
    db.refresh(db_movie)
    return db_movie

# Аналогично можно добавить функции для операций просмотра, подписок, отзывов и рекомендаций
