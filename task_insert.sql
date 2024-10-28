-- Жанры

INSERT INTO genres (genre_name) VALUES ('Rock');
INSERT INTO genres (genre_name) VALUES ('Pop');
INSERT INTO genres (genre_name) VALUES ('Jazz');


-- Артисты 

INSERT INTO artists (artist_name) VALUES ('The Beatles');
INSERT INTO artists (artist_name) VALUES ('Michael Jackson');
INSERT INTO artists (artist_name) VALUES ('AC/DC');
INSERT INTO artists (artist_name) VALUES ('Pink Floyd');
INSERT INTO artists (artist_name) VALUES ('Aurora');


-- Альбомы

INSERT INTO albums (album_title, release_year) VALUES ('Abbey Road', 1969);
INSERT INTO albums (album_title, release_year) VALUES ('Thriller', 1982);
INSERT INTO albums (album_title, release_year) VALUES ('Back in Black', 1980);
INSERT INTO albums (album_title, release_year) VALUES ('Dreams', 2020);

-- Треки 

INSERT INTO tracks (track_title, album_id, duration) VALUES ('Come Together', 1, 260); -- 4:20
INSERT INTO tracks (track_title, album_id, duration) VALUES ('Something', 1, 183); -- 3:03
INSERT INTO tracks (track_title, album_id, duration) VALUES ('Thriller', 2, 357); -- 5:57
INSERT INTO tracks (track_title, album_id, duration) VALUES ('Billie Jean', 2, 294); -- 4:54
INSERT INTO tracks (track_title, album_id, duration) VALUES ('Hells Bells', 3, 312); -- 5:12
INSERT INTO tracks (track_title, album_id, duration) VALUES ('Back in Black', 3, 255); -- 4:15
INSERT INTO tracks (track_title, album_id, duration) VALUES ('My Song', 4, 215); -- 3:35


-- Сборники

INSERT INTO collections (collection_name, release_year) VALUES ('Greatest Hits 60s', 2020);
INSERT INTO collections (collection_name, release_year) VALUES ('Rock Legends', 2018);
INSERT INTO collections (collection_name, release_year) VALUES ('Pop Classics', 2019);
INSERT INTO collections (collection_name, release_year) VALUES ('Jazz Essentials', 2021);



-- Связи между артистами и жанрами

INSERT INTO artist_genres (artist_id, genre_id) VALUES (1, 1); -- The Beatles - Rock
INSERT INTO artist_genres (artist_id, genre_id) VALUES (1, 2); -- The Beatles - Pop
INSERT INTO artist_genres (artist_id, genre_id) VALUES (2, 2); -- Michael Jackson - Pop
INSERT INTO artist_genres (artist_id, genre_id) VALUES (3, 1); -- AC/DC - Rock
INSERT INTO artist_genres (artist_id, genre_id) VALUES (4, 1); -- Pink Floyd - Rock
INSERT INTO artist_genres (artist_id, genre_id) VALUES (4, 3); -- Pink Floyd - Jazz
INSERT INTO artist_genres (artist_id, genre_id) VALUES (5, 2); -- Aurora - Pop


-- Связи между артистами и альбомами 

INSERT INTO artist_albums (album_id, artist_id) VALUES (1, 1); -- Abbey Road - The Beatles
INSERT INTO artist_albums (album_id, artist_id) VALUES (2, 2); -- Thriller - Michael Jackson
INSERT INTO artist_albums (album_id, artist_id) VALUES (3, 3); -- Back in Black - AC/DC
INSERT INTO artist_albums (album_id, artist_id) VALUES (4, 5); -- Dreams - Aurora



-- Связи между треками и сборниками

INSERT INTO collection_tracks (track_id, collection_id) VALUES (1, 1); -- Come Together в Greatest Hits 60s
INSERT INTO collection_tracks (track_id, collection_id) VALUES (2, 1); -- Something в Greatest Hits 60s
INSERT INTO collection_tracks (track_id, collection_id) VALUES (3, 2); -- Thriller в Rock Legends
INSERT INTO collection_tracks (track_id, collection_id) VALUES (4, 2); -- Billie Jean в Rock Legends
INSERT INTO collection_tracks (track_id, collection_id) VALUES (5, 3); -- Hells Bells в Pop Classics
INSERT INTO collection_tracks (track_id, collection_id) VALUES (6, 3); -- Back in Black в Pop Classics
