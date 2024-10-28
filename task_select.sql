
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
-- Исправлено

SELECT track_title
FROM tracks
WHERE (track_title ILIKE 'мой %' OR track_title ILIKE 'my %')
   OR(track_title ILIKE '% мой' OR track_title  ILIKE '% my')
   OR(track_title ILIKE '% мой %' OR track_title ILIKE '% my %')
   OR(track_title ILIKE 'мой' OR track_title ILIKE 'my');

-- Название треков, которые содержат слово "мой" или "my" вариант 2

SELECT track_title
FROM tracks
WHERE track_title ~* '\yмой\y' 
   OR track_title ~* '\ymy\y';

-- Количество исполнителей в каждом жанре

SELECT g.genre_name AS Жанр, COUNT(ag.artist_id) AS Количество_исполнителей
FROM genres g
JOIN artist_genres ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов

SELECT COUNT(t.track_id) AS Количество_треков
FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому

SELECT a.album_title AS Альбом, AVG(t.duration) AS Средняя_продолжительность_сек
FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.album_title;

-- Все исполнители, которые не выпустили альбомы в 2020 году
-- Исправлено

SELECT ar.artist_name AS Исполнитель 
FROM artists ar
WHERE ar.artist_name NOT IN (
    SELECT ar2.artist_name
    FROM artists ar2 
    JOIN artist_albums aa ON ar2.artist_id = aa.artist_id 
    JOIN albums al ON aa.album_id = al.album_id 
    WHERE al.release_year = 2020 
);

-- Названия сборников, в которых присутствует "The Beatles"
-- Исправлено выводил один сборник 2 раза, добавлен 'DISTINCT'

SELECT DISTINCT c.collection_name AS Сборник
FROM collections c
JOIN collection_tracks ct ON c.collection_id = ct.collection_id
JOIN tracks t ON ct.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN artist_albums aa ON a.album_id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.artist_id
WHERE ar.artist_name = 'The Beatles';
