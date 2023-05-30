-- 1 Название и год выхода альбомов, вышедших в 2018 году.
SELECT album_name, year FROM album
WHERE year = '01-01-2018';


-- 2 Название и продолжительность самого длительного трека.

SELECT track_name, track_length FROM track
WHERE track_length = (SELECT max(track_length) FROM track);

-- 3 Название треков, продолжительность которых не менее 3,5 минут.

SELECT track_name, track_length FROM track
WHERE track_length >= 210;

-- 4 Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT collection_name FROM collection
WHERE collection_year BETWEEN '01-01-2018' AND '01-01-2020';

--5 исполнители, чье имя состоит из 1 слова:

SELECT musician_name FROM musician
WHERE musician_name NOT LIKE '% %';

--6 название треков, которые содержат слово «мой» или «my»:

SELECT track_name FROM track
WHERE track_name ILIKE '%my%' OR track_name ILIKE  '%мой%';