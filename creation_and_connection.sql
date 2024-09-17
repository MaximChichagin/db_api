CREATE TABLE IF NOT EXISTS "Пользователь" (
	"ID_пользователя" serial NOT NULL UNIQUE,
	"ФИО" varchar(255) NOT NULL,
	"E-mail" varchar(255) NOT NULL,
	"Дата_рождения" date NOT NULL,
	"Дата_регистрации" date NOT NULL,
	PRIMARY KEY ("ID_пользователя")
);

CREATE TABLE IF NOT EXISTS "Фильм" (
	"ID_фильма" serial NOT NULL UNIQUE,
	"Название" varchar(255) NOT NULL,
	"Жанр" varchar(255) NOT NULL,
	"Год_выпуска" bigint NOT NULL,
	"Режиссер" varchar(255) NOT NULL,
	"Продолжительность" time without time zone NOT NULL,
	PRIMARY KEY ("ID_фильма")
);

CREATE TABLE IF NOT EXISTS "Подписка" (
	"ID_подписки" serial NOT NULL UNIQUE,
	"Тип_подписки" varchar(50) NOT NULL,
	"Цена" bigint NOT NULL,
	"Дата_начала" date NOT NULL,
	"Дата_окончания" date NOT NULL,
	PRIMARY KEY ("ID_подписки")
);

CREATE TABLE IF NOT EXISTS "Просмотр" (
	"ID_просмотра" serial NOT NULL UNIQUE,
	"ID_пользователя" bigint NOT NULL,
	"ID_фильма" bigint NOT NULL,
	"Дата_и_время_просмотра" timestamp without time zone NOT NULL,
	"Продолжительность_просмотра" time without time zone NOT NULL,
	PRIMARY KEY ("ID_просмотра")
);

CREATE TABLE IF NOT EXISTS "Оплата" (
	"ID_оплаты" serial NOT NULL UNIQUE,
	"ID_пользователя" bigint NOT NULL,
	"ID_подписки" bigint NOT NULL,
	"Сумма" bigint NOT NULL,
	"Дата_оплаты" date NOT NULL,
	PRIMARY KEY ("ID_оплаты")
);

CREATE TABLE IF NOT EXISTS "Отзыв" (
	"ID_отзыва" serial NOT NULL UNIQUE,
	"ID_пользователя" bigint NOT NULL,
	"ID_фильма" bigint NOT NULL,
	"Рейтинг" bigint NOT NULL,
	"Текст_отзыва" varchar(255) NOT NULL,
	"Дата_отзыва" date NOT NULL,
	PRIMARY KEY ("ID_отзыва")
);

CREATE TABLE IF NOT EXISTS "Рекомендация" (
	"ID_рекомендации" serial NOT NULL UNIQUE,
	"ID_пользователя" bigint NOT NULL,
	"ID_фильма" bigint NOT NULL,
	"Дата_рекомендации" date NOT NULL,
	PRIMARY KEY ("ID_рекомендации")
);
