-- Создаю и выбираю БД
DROP DATABASE IF EXISTS groupmates;
CREATE DATABASE groupmates;
USE groupmates;

-- создаю таблицу с тремя колонками
DROP TABLE IF EXISTS friends;
CREATE TABLE friends (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL );

-- Вставляю данные
INSERT INTO friends (name, age) 
VALUES
	('Иван', 25),
	('София', 21),
	('Жанна', 18),
	('Сергей', 28),
	('Илья', 32);

-- Добавляю четвертый столбец
ALTER TABLE friends 
	ADD COLUMN adress TEXT NOT NULL;

-- Заполняю четвертый столбец
UPDATE friends SET adress = CASE
	WHEN name = 'Иван' THEN 'Москва, ул. Железнодорожная 12'
    WHEN name = 'София' THEN 'Сочи, ул. Есенина 15' 
    WHEN name = 'Жанна' THEN 'Белгород, ул. Астафева 65'
    WHEN name = 'Сергей' THEN 'Ижевск, ул. Красноармейская 13'
    WHEN name = 'Илья' THEN 'Славгород, ул. Джигурды 32'
END;
