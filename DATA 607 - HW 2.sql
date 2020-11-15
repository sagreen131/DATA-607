

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS critics;
DROP TABLE IF EXISTS reviews;

CREATE TABLE `movies`(
    `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `title` varchar(100) NOT NULL,
    `year` float(16),
    `URL` varchar(256)
);

CREATE TABLE `critics`(
    `user_id` INT PRIMARY KEY,
    `user_name` VARCHAR(30),
    `grp_id` INT
);


CREATE TABLE `reviews`(
    `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `c_id` int NOT NULL,
    `rating` int(1),
    `review` varchar (100),
    `v_id` int(11) NOT NULL,
     constraint FOREIGN KEY (`v_id`) REFERENCES `movies` (`id`),
     constraint FOREIGN KEY (`c_id`) REFERENCES `critics` (`user_id`)
);


INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"Black Panther","2018","https://www.marvel.com/movies/black-panther");

INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"The Irishman","2019","https://www.netflix.com/title/80175798");

INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"21 Bridges","2019","https://www.21bridges.movie/");

INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"Toy Story 4","2019","https://movies.disney.com/toy-story-4");

INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"The Lion King","2019","https://movies.disney.com/the-lion-king-2019");

INSERT INTO `movies` (`title`,`year`,`URL`) VALUES(
"Joker","2019"," http://www.jokermovie.net/");


INSERT INTO critics(user_id, user_name) VALUES (1,'Shane');
INSERT INTO critics(user_id, user_name) VALUES (2,'Shawn');
INSERT INTO critics(user_id, user_name) VALUES (3,'Vanessa');
INSERT INTO critics(user_id, user_name) VALUES (4,'Ameena');
INSERT INTO critics(user_id, user_name) VALUES (5,'Catherine');
INSERT INTO critics(user_id, user_name) VALUES (6,'Raymond');

INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,5,'One of my favorite movies!',1);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,4,'I enjoyed watching this, even though its for kids!',4);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,2,'This is nothing in comparison to the original!',5);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,NULL,'I have not watched it yet, but my friends love it!',2);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,5,'I love a really good suspense film!',3);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,5,'This movie far exceeded my expectations!',6);

INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,3,'I could not follow the storyline!',2);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,1,'Trash!',5);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,2,'I was able to predict the movie!',6);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,4,'R.I.P. Chadwick Boseman!',3);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,NULL,'I never watched any of the Toy Story series.',4);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,5,'Long live the King!',1);


INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,4,'Dope movie!',3);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,1,'Can I put a rating lower than 1?',6);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,5,'Wakanda forever!!!!',1);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,2,'The first Toy Story was the best one!',4);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,3,'I had high hopes for this movie, but it was okay.',5);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,4,'Nice story line',2);


INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,NULL,'I have not watched it yet!',4);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,5,'Great movie!',1);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,3,'Decent movie!',2);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,1,'I want to unsee what I watched!',5);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,3,'Dark movie, but I enjoyed the plot!',6);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,NULL,'I will watch this movie in due time!',3);


INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,2,'The movie was okay.',5);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,2,'I do not think this movie was accurate!',2);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,NULL,'',3);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,NULL,'',6);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,5,'Fantastic movie!!!',1);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,5,'I watched it with my nephews and it was good!',4);

INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
1,5,'',6);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
2,4,'Good movie, but the novel was better!',3);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
3,4,'',4);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
5,5,'Everyone, please watch this movie!!!',1);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
4,NULL,'',2);
INSERT INTO `reviews` (`c_id`,`rating`,`review`,`v_id`) VALUES(
6,NULL,'',5);

SELECT * FROM movies;
SELECT * FROM critics;
SELECT * FROM reviews;

SELECT m.title, c.user_name, r.review, r.rating FROM movies m
INNER JOIN reviews r
ON m.id = r.v_id
INNER JOIN critics c
ON r.c_id = c.user_id;
