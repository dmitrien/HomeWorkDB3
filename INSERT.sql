insert into Genre(id, name) values (1, N'Pop');
insert into Genre(id, name) values (2, N'Rap');
insert into Genre(id, name) values (3, N'Rock');

insert into Executor(id, user_name) values (1, N'Bob Dilan');
insert into Executor(id, user_name) values (2, N'Eminem');
insert into Executor(id, user_name) values (3, N'Mikle Jakson');
insert into Executor(id, user_name) values (4, N'BTS');

insert into Albums(id, albums_name, year_release) values (1, N'Misury', '14.02.2014');
insert into Albums(id, albums_name, year_release) values (2, N'HongKong', '19.07.2020');
insert into Albums(id, albums_name, year_release) values (3, N'Abu', '29.01.2001');

insert into Song( albums_song, duration, albums_id) values ( N'MisuryZZ', 123, 1);
insert into Song( albums_song, duration, albums_id) values ( N'HoKong', 234, 1);
insert into Song( albums_song, duration, albums_id) values ( N'Abumyerte', 43, 2);
insert into Song( albums_song, duration, albums_id) values ( N'Miyzzzy', 96, 2);
insert into Song( albums_song, duration, albums_id) values ( N'HongKong', 182, 2);
insert into Song( albums_song, duration, albums_id) values ( N'Abudddмой', 293, 3);

insert into Collection(id, name_collection, release_date) values (1, N'They', '14.02.2020');
insert into Collection(id, name_collection, release_date) values (2, N'IS', '16.12.2004');
insert into Collection(id, name_collection, release_date) values (3, N'He', '10.06.2019');
insert into Collection(id, name_collection, release_date) values (4, N'She', '04.02.2000');

INSERT INTO song.songofcollection(song_id, collection_id) values (2, 1);
INSERT INTO song.songofcollection(song_id, collection_id) values (4, 1);
INSERT INTO song.songofcollection(song_id, collection_id) values (5, 1);
INSERT INTO song.songofcollection(song_id, collection_id) values (6, 1);
INSERT INTO song.songofcollection(song_id, collection_id) values (3, 2);
INSERT INTO song.songofcollection(song_id, collection_id) values (1, 2);
INSERT INTO song.songofcollection(song_id, collection_id) values (5, 2);
INSERT INTO song.songofcollection(song_id, collection_id) values (2, 3);
INSERT INTO song.songofcollection(song_id, collection_id) values (3, 3);
INSERT INTO song.songofcollection(song_id, collection_id) values (6, 3);
INSERT INTO song.songofcollection(song_id, collection_id) values (1, 4);
INSERT INTO song.songofcollection(song_id, collection_id) values (2, 4);
INSERT INTO song.songofcollection(song_id, collection_id) values (3, 4);
INSERT INTO song.songofcollection(song_id, collection_id) values (4, 4);
INSERT INTO song.songofcollection(song_id, collection_id) values (5, 4);
INSERT INTO song.songofcollection(song_id, collection_id) values (6, 4);

INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (1, 1);
INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (2, 1);
INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (4, 2);
INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (1, 3);
INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (2, 3);
INSERT INTO song.albumsofexecutor(executor_id, albums_id) values (3, 3);

INSERT INTO song.genreofexecutor(genre_id, executor_id) values (1, 1);
INSERT INTO song.genreofexecutor(genre_id, executor_id) values (1, 2);
INSERT INTO song.genreofexecutor(genre_id, executor_id) values (2, 3);
INSERT INTO song.genreofexecutor(genre_id, executor_id) values (3, 1);
INSERT INTO song.genreofexecutor(genre_id, executor_id) values (1, 4);
INSERT INTO song.genreofexecutor(genre_id, executor_id) values (2, 2);