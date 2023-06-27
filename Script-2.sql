
insert into genres(genre_name) values('hip-hop');

insert into genres(genre_name) values('pop music');

insert into genres(genre_name) values('rock');

insert into musicians(musician_name) values('Snoop dog');

insert into musicians(musician_name) values('Drake');

insert into musicians(musician_name) values('Michael Jackson');

insert into musicians(musician_name) values('The beatles');

insert into albums(album_name, published_in) values('Bad', 1987);

insert into albums(album_name, published_in) values('Happiness', 2020);

insert into albums(album_name, published_in) values('Sunny', 2017);

insert into mixtapes(mixtape_name, published_in) values('More Life', 2017);

insert into mixtapes(mixtape_name, published_in) values('Shady Classics', 2014);

insert into mixtapes(mixtape_name, published_in) values('Deantoni Parks', 1997);

insert into mixtapes(mixtape_name, published_in) values('Great Hit Songs', 2000);

insert into songs(song_name, duration, album_id) values('Friends', 150, 1);

insert into songs(song_name, duration, album_id) values('Sun King', 146, 2);

insert into songs(song_name, duration, album_id) values('Im on fire', 213, 3);

insert into songs(song_name, duration, album_id) values('So Far', 325, 2);

insert into songs(song_name, duration, album_id) values('Bad', 247, 1);

insert into songs(song_name, duration, album_id) values('Jail', 432, 3);
--
insert into genre_musician(genre_id, musician_id) values(1, 1);

insert into genre_musician(genre_id, musician_id) values(2, 2);

insert into genre_musician(genre_id, musician_id) values(3, 4);

insert into genre_musician(genre_id, musician_id) values(2, 1);

insert into genre_musician(genre_id, musician_id) values(3, 2);

insert into mixtape_song(mixtape_id, song_id) values(1, 6);

insert into mixtape_song(mixtape_id, song_id) values(4, 2);

insert into mixtape_song(mixtape_id, song_id) values(2, 3);

insert into mixtape_song(mixtape_id, song_id) values(1, 5);

insert into mixtape_song(mixtape_id, song_id) values(2, 1);

insert into mixtape_song(mixtape_id, song_id) values(3, 1);

insert into musician_album(musician_id, album_id) values(1, 1);

insert into musician_album(musician_id, album_id) values(2, 2);

insert into musician_album(musician_id, album_id) values(3, 2);

insert into musician_album(musician_id, album_id) values(4, 3);
