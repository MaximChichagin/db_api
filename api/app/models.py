# app/models.py
from sqlalchemy import Column, Integer, String, Date, Time, ForeignKey, Text, BigInteger
from sqlalchemy.orm import relationship
from app.db import Base

# Модель для пользователей
class User(Base):
    __tablename__ = "Пользователь"

    ID_пользователя = Column(Integer, primary_key=True, index=True)
    ФИО = Column(String(255), nullable=False)
    email = Column(String(255), nullable=False, unique=True)
    Дата_рождения = Column(Date, nullable=False)
    Дата_регистрации = Column(Date, nullable=False)

    # Отношения с другими таблицами
    просмотры = relationship("Просмотр", back_populates="пользователь")
    оплаты = relationship("Оплата", back_populates="пользователь")
    отзывы = relationship("Отзыв", back_populates="пользователь")
    рекомендации = relationship("Рекомендация", back_populates="пользователь")


# Модель для фильмов
class Movie(Base):
    __tablename__ = "Фильм"

    ID_фильма = Column(Integer, primary_key=True, index=True)
    Название = Column(String(255), nullable=False)
    Жанр = Column(String(255), nullable=False)
    Год_выпуска = Column(BigInteger, nullable=False)
    Режиссер = Column(String(255), nullable=False)
    Продолжительность = Column(Time, nullable=False)

    # Отношения с другими таблицами
    просмотры = relationship("Просмотр", back_populates="фильм")
    отзывы = relationship("Отзыв", back_populates="фильм")
    рекомендации = relationship("Рекомендация", back_populates="фильм")


# Модель для просмотров
class Просмотр(Base):
    __tablename__ = "Просмотр"

    ID_просмотра = Column(Integer, primary_key=True, index=True)
    ID_пользователя = Column(Integer, ForeignKey("Пользователь.ID_пользователя"), nullable=False)
    ID_фильма = Column(Integer, ForeignKey("Фильм.ID_фильма"), nullable=False)
    Дата_и_время_просмотра = Column(Date, nullable=False)
    Продолжительность_просмотра = Column(Time, nullable=False)

    # Связи
    пользователь = relationship("User", back_populates="просмотры")
    фильм = relationship("Movie", back_populates="просмотры")

# Модель для подписок, оплат, отзывов и рекомендаций можно продолжить аналогичным образом
