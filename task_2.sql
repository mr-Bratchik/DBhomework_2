
-- Название и продолжительность самого длительного трека

SELECT track_title, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;


-- Название треков, продолжительность которых не менее 3,5 минут

SELECT track_title
FROM tracks
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT collection_name
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова

SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '% %';

-- Название треков, которые содержат слово "мой" или "my"

SELECT track_title
FROM tracks
WHERE track_title ILIKE '%мой%' OR track_title ILIKE '%my%';
