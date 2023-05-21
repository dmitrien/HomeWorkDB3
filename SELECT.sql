--Название и продолжительность самого длительного трека.
select albums_song, duration
from song
where duration = (select max(duration) from song);

--Название треков, продолжительность которых не менее 3,5 минут.
select albums_song
from song
where duration > 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name_collection 
from collection
where release_date > '2017-12-31' and release_date < '2021-01-01';

--Исполнители, чьё имя состоит из одного слова.
select user_name  
from executor
where user_name not like '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT albums_song 
FROM song
WHERE regexp_split_to_array(lower(albums_song), ' ') && ARRAY['my', 'мой'];

--Количество исполнителей в каждом жанре.
select "name", count(ge.executor_id) count_executor
from genre g 
left join genreofexecutor ge on g.id = ge.genre_id
group by g.name
order by count_executor desc;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(s.id) count_song
from albums a 
join song s on a.id = s.albums_id
where a.year_release > '2018-12-31' and a.year_release < '2021-01-01'
order by count_song desc;

--Средняя продолжительность треков по каждому альбому.
select a.albums_name, avg(s.duration) 
from albums a 
join song s on a.id = s.albums_id
group by a.albums_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT user_name
FROM executor
WHERE user_name NOT IN (select e.user_name 
from albums a
join albumsofexecutor a2 on a.id = a2.albums_id
join executor e on a2.executor_id = e.id
where a.year_release > '2019-12-31' and a.year_release < '2021-01-01'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.name_collection
from executor e 
join albumsofexecutor ae on e.id = aE.executor_id
join albums a on ae.albums_id  = a.id 
join song s on a.id = s.albums_id 
join songofcollection s2 on s.id = s2.song_id 
join collection c on s2.collection_id = c.id
where user_name = 'Eminem'
group by  c.name_collection;