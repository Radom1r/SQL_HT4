
insert into genres(genre_name) values('hip-hop') on conflict do nothing;

insert into genres(genre_name) values('pop music') on conflict do nothing;

insert into genres(genre_name) values('rock') on conflict do nothing;

insert into musicians(musician_name) values('Eminem') on conflict do nothing;

insert into musicians(musician_name) values('Drake') on conflict do nothing;

insert into musicians(musician_name) values('Michael Jackson') on conflict do nothing;

insert into musicians(musician_name) values('The beatles') on conflict do nothing;

insert into albums(album_name, published_in) values('Bad', 1987) on conflict do nothing;

insert into albums(album_name, published_in) values('Recovery', 2010) on conflict do nothing;

insert into albums(album_name, published_in) values('Abbey Road', 1969) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('The end', 141, 9) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('Sun King', 146, 9) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('Im on fire', 213, 8) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('So Far', 325, 8) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('Bad', 247, 7) on conflict do nothing;

insert into songs(song_name, duration, album_id) values('Gods plan', 199, 9) on conflict do nothing;

insert into mixtapes(mixtape_name, published_in) values('More Life', 2017) on conflict do nothing;

insert into mixtapes(mixtape_name, published_in) values('Shady Classics', 2014) on conflict do nothing;

insert into mixtapes(mixtape_name, published_in) values('Deantoni Parks', 1997) on conflict do nothing;

insert into mixtapes(mixtape_name, published_in) values('Great Hit Songs', 2000) on conflict do nothing;

insert into genre_musician(genre_id, musician_id) values(207, 18) on conflict do nothing;

insert into genre_musician(genre_id, musician_id) values(208, 18) on conflict do nothing;

insert into genre_musician(genre_id, musician_id) values(207, 19) on conflict do nothing;

insert into genre_musician(genre_id, musician_id) values(208, 20) on conflict do nothing;

insert into genre_musician(genre_id, musician_id) values(209, 21) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(4, 26) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(4, 27) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(1, 28) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(1, 29) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(2, 31) on conflict do nothing;

insert into mixtape_song(mixtape_id, song_id) values(3, 30) on conflict do nothing;

insert into musician_album(musician_id, album_id) values(20, 7) on conflict do nothing;

insert into musician_album(musician_id, album_id) values(18, 8) on conflict do nothing;

insert into musician_album(musician_id, album_id) values(21, 9) on conflict do nothing;

insert into musician_album(musician_id, album_id) values(19, 8) on conflict do nothing;
