-- Вставка данных в таблицу Пользователь
INSERT INTO "Пользователь" ("ФИО", "E-mail", "Дата_рождения", "Дата_регистрации") VALUES 
('Иван Иванов', 'ivanov@mail.ru', '1985-06-15', '2023-01-10'),
('Мария Петрова', 'petrova@mail.ru', '1992-08-22', '2023-03-05'),
('Алексей Смирнов', 'smirnov@mail.ru', '1988-11-02', '2023-02-15'),
('Ольга Сидорова', 'sidorova@mail.ru', '1995-12-05', '2023-04-20'),
('Николай Федоров', 'fedorov@mail.ru', '1980-09-10', '2023-05-14'),
('Виктория Захарова', 'zaharova@mail.ru', '1991-03-17', '2023-06-21'),
('Антон Егоров', 'egorov@mail.ru', '1993-04-30', '2023-07-01'),
('Елена Кузнецова', 'kuznetsova@mail.ru', '1987-01-25', '2023-08-15');

-- Вставка данных в таблицу Фильм
INSERT INTO "Фильм" ("Название", "Жанр", "Год_выпуска", "Режиссер", "Продолжительность") VALUES 
('Интерстеллар', 'Фантастика', 2014, 'Кристофер Нолан', '02:49:00'),
('Начало', 'Фантастика', 2010, 'Кристофер Нолан', '02:28:00'),
('Мстители', 'Экшен', 2012, 'Джосс Уидон', '02:23:00'),
('Матрица', 'Фантастика', 1999, 'Лана и Лилли Вачовски', '02:16:00'),
('Аватар', 'Фантастика', 2009, 'Джеймс Кэмерон', '02:42:00'),
('Гарри Поттер', 'Фэнтези', 2001, 'Крис Коламбус', '02:32:00'),
('Темный рыцарь', 'Экшен', 2008, 'Кристофер Нолан', '02:32:00'),
('Хоббит', 'Фэнтези', 2012, 'Питер Джексон', '02:49:00');

-- Вставка данных в таблицу Подписка
INSERT INTO "Подписка" ("Тип_подписки", "Цена", "Дата_начала", "Дата_окончания") VALUES 
('Стандарт', 500, '2024-01-01', '2025-01-01'),
('Премиум', 1000, '2024-01-01', '2025-01-01'),
('Базовый', 300, '2024-02-01', '2025-02-01'),
('VIP', 1500, '2024-03-01', '2025-03-01'),
('Стандарт', 500, '2024-04-01', '2025-04-01'),
('Премиум', 1000, '2024-05-01', '2025-05-01'),
('Базовый', 300, '2024-06-01', '2025-06-01'),
('VIP', 1500, '2024-07-01', '2025-07-01');

-- Вставка данных в таблицу Просмотр
INSERT INTO "Просмотр" ("ID_пользователя", "ID_фильма", "Дата_и_время_просмотра", "Продолжительность_просмотра") VALUES 
(1, 1, '2024-09-13 20:00:00', '02:30:00'),
(2, 2, '2024-09-14 18:00:00', '02:00:00'),
(3, 3, '2024-09-12 21:00:00', '02:23:00'),
(4, 4, '2024-09-11 19:00:00', '02:16:00'),
(5, 5, '2024-09-10 22:00:00', '02:42:00'),
(6, 6, '2024-09-09 17:00:00', '02:32:00'),
(7, 7, '2024-09-08 15:30:00', '02:32:00'),
(8, 8, '2024-09-07 20:00:00', '02:49:00');

-- Вставка данных в таблицу Оплата
INSERT INTO "Оплата" ("ID_пользователя", "ID_подписки", "Сумма", "Дата_оплаты") VALUES 
(1, 1, 500, '2024-09-01'),
(2, 2, 1000, '2024-09-05'),
(3, 3, 300, '2024-09-03'),
(4, 4, 1500, '2024-09-07'),
(5, 5, 500, '2024-09-09'),
(6, 6, 1000, '2024-09-11'),
(7, 7, 300, '2024-09-13'),
(8, 8, 1500, '2024-09-15');

-- Вставка данных в таблицу Отзыв
INSERT INTO "Отзыв" ("ID_пользователя", "ID_фильма", "Рейтинг", "Текст_отзыва", "Дата_отзыва") VALUES 
(1, 1, 5, 'Отличный фильм!', '2024-09-10'),
(2, 2, 4, 'Очень понравилось!', '2024-09-11'),
(3, 3, 5, 'Прекрасный фильм!', '2024-09-12'),
(4, 4, 4, 'Захватывающий сюжет!', '2024-09-13'),
(5, 5, 5, 'Очень впечатляюще!', '2024-09-14'),
(6, 6, 3, 'Могло быть лучше.', '2024-09-15'),
(7, 7, 5, 'Фильм на века!', '2024-09-16'),
(8, 8, 4, 'Рекомендую к просмотру!', '2024-09-17');

-- Вставка данных в таблицу Рекомендация
INSERT INTO "Рекомендация" ("ID_пользователя", "ID_фильма", "Дата_рекомендации") VALUES 
(1, 3, '2024-09-13'),
(2, 1, '2024-09-14'),
(3, 2, '2024-09-15'),
(4, 5, '2024-09-16'),
(5, 6, '2024-09-17'),
(6, 7, '2024-09-18'),
(7, 8, '2024-09-19'),
(8, 4, '2024-09-20');
