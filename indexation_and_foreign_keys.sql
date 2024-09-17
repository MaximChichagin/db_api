ALTER TABLE "Просмотр" ADD CONSTRAINT "Просмотр_fk1" FOREIGN KEY ("ID_пользователя") REFERENCES "Пользователь"("ID_пользователя");
ALTER TABLE "Просмотр" ADD CONSTRAINT "Просмотр_fk2" FOREIGN KEY ("ID_фильма") REFERENCES "Фильм"("ID_фильма");
ALTER TABLE "Оплата" ADD CONSTRAINT "Оплата_fk1" FOREIGN KEY ("ID_пользователя") REFERENCES "Пользователь"("ID_пользователя");
ALTER TABLE "Оплата" ADD CONSTRAINT "Оплата_fk2" FOREIGN KEY ("ID_подписки") REFERENCES "Подписка"("ID_подписки");
ALTER TABLE "Отзыв" ADD CONSTRAINT "Отзыв_fk1" FOREIGN KEY ("ID_пользователя") REFERENCES "Пользователь"("ID_пользователя");
ALTER TABLE "Отзыв" ADD CONSTRAINT "Отзыв_fk2" FOREIGN KEY ("ID_фильма") REFERENCES "Фильм"("ID_фильма");
ALTER TABLE "Рекомендация" ADD CONSTRAINT "Рекомендация_fk1" FOREIGN KEY ("ID_пользователя") REFERENCES "Пользователь"("ID_пользователя");
ALTER TABLE "Рекомендация" ADD CONSTRAINT "Рекомендация_fk2" FOREIGN KEY ("ID_фильма") REFERENCES "Фильм"("ID_фильма");

CREATE INDEX IF NOT EXISTS idx_пользователь_фио ON "Пользователь"("ФИО");
CREATE INDEX IF NOT EXISTS idx_фильм_название ON "Фильм"("Название");
CREATE INDEX IF NOT EXISTS idx_просмотр_дата ON "Просмотр"("Дата_и_время_просмотра");
CREATE INDEX IF NOT EXISTS idx_оплата_дата ON "Оплата"("Дата_оплаты");
