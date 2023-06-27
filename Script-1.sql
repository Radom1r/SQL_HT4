
create table if not exists genres(
	id SERIAL primary key,
	genre_name VARCHAR(100) unique not null
);

create unique index if not exists unique_genres on genres (genre_name);

create table if not exists musicians(
	id SERIAL primary key,
	musician_name VARCHAR(100) unique not null 
);

create unique index if not exists unique_musicians on musicians (musician_name);

create table if not exists genre_musician(
	genre_id int references genres(id),
	musician_id int references musicians(id),
	constraint gm_id primary key (genre_id, musician_id)
);

create table if not exists albums(
	id SERIAL primary key,
	album_name VARCHAR(100) not null unique,
	published_in int not null
);

create unique index if not exists unique_albums on albums (album_name);

create table if not exists musician_album(
	musician_id int references musicians(id),
	album_id int references albums(id),
	constraint ma_id primary key (musician_id, album_id)
);

create table if not exists songs(
	id SERIAL primary key,
	song_name VARCHAR(100) not null unique,
	duration integer not null,
	album_id int references albums(id)
);

create unique index if not exists unique_songs on songs (song_name);

create table if not exists mixtapes(
	id SERIAL primary key,
	mixtape_name VARCHAR(100) not null unique,
	published_in int not null
);

create unique index if not exists unique_mixtapes on mixtapes (mixtape_name);

create table if not exists mixtape_song(
	mixtape_id int references mixtapes(id),
	song_id int references songs(id),
	constraint ms_id primary key (mixtape_id, song_id) 
);
