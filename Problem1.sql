-- TASK 1 & TASK 3
CREATE DATABASE music_library;

USE music_library;


CREATE TABLE albums (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150),
  artist_id INT,
  genre_id INT,
  release_year INT,
  total_tracks INT,
  FOREIGN KEY (artist_id) REFERENCES artists(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);


CREATE TABLE genres (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);


CREATE TABLE artists (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150),
  genre_id INT,
  label VARCHAR(80),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);
-- TASK 2
ALTER TABLE albums
add column total_duration INT;

