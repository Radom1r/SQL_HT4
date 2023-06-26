
select song_name, duration from songs
where duration = (select max(duration) from songs);

select song_name, duration from songs 
where duration > 210;

select mixtape_name, published_in from mixtapes
where published_in between 2018 and 2020;

select musician_name from musicians
where musician_name not like ('% %');

select song_name from songs 
where song_name like ('%my%') or song_name like ('%мой%');

select genre_name, count(all_musician_id) from genre_musician, genres 
where genre_id = genres.id
group by genre_name
order by count(all_musician_id) desc;

select count(songs.id) from songs, albums a
where a.published_in  between 2019 and 2020 and songs.album_id = a.id;

select album_name, avg(duration) from songs s, albums a
where s.album_id = a.id 
group by album_name;

select musician_name from musician_album ma, albums a, musicians m 
where a.published_in != 2020 and ma.album_id = a.id and ma.musician_id = m.id ;

select distinct m2.mixtape_name from mixtape_song ms, songs s, albums a, musician_album ma, musicians m, mixtapes m2  
where ms.mixtape_id = m2.id and ms.song_id = s.id and s.album_id = a.id and a.id = ma.album_id and ma.musician_id = m.id and m.musician_name = 'Eminem';

select a.album_name from genre_musician gm, musician_album ma, albums a
where gm.all_musician_id = ma.musician_id and ma.album_id = a.id
group by a.album_name
having count(gm.genre_id) > 1;

select song_name from mixtape_song ms, songs s 
where ms.mixtape_id is null and s.id = ms.song_id;

select m.musician_name , duration from songs s , albums a, musician_album ma, musicians m
where s.album_id = a.id and a.id = ma.album_id and ma.musician_id = m.id and duration = (select min(duration) from songs)
group by m.musician_name, duration;

select a.album_name, count(song_name) from songs s, albums a
where s.album_id = a.id 
group by a.album_name
having count(song_name) = (select count(song_name) from songs s, albums a where s.album_id = a.id group by a.album_name
order by count(song_name)
limit 1)
order by count(song_name);