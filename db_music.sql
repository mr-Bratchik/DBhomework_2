-- Жанры
CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

-- Артисты
CREATE TABLE IF NOT EXISTS artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL 
);

-- Альбомы
CREATE TABLE IF NOT EXISTS albums (
    album_id SERIAL PRIMARY KEY,
    album_title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL 
);

-- Песни
CREATE TABLE IF NOT EXISTS tracks (
    track_id SERIAL PRIMARY KEY,
    track_title VARCHAR(100) NOT NULL,
    album_id INT REFERENCES albums(album_id),
    duration INT NOT NULL
);

-- Сборники
CREATE TABLE IF NOT EXISTS collections (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

-- Жанры артистов
CREATE TABLE IF NOT EXISTS artist_genres (
    genre_id INT REFERENCES genres(genre_id),
    artist_id INT REFERENCES artists(artist_id),
    PRIMARY KEY (genre_id, artist_id)
);

-- Альбомы артистов
CREATE TABLE IF NOT EXISTS artist_albums (
    album_id INT REFERENCES albums(album_id),
    artist_id INT REFERENCES artists(artist_id),
    PRIMARY KEY (album_id, artist_id)
);

-- Песни в сборниках
CREATE TABLE IF NOT EXISTS collection_tracks (
    track_id INT REFERENCES tracks(track_id),
    collection_id INT REFERENCES collections(collection_id),
    PRIMARY KEY (track_id, collection_id)
);
