

CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (movie_id)
)ENGINE=INNODB;

CREATE TABLE users (
         user_id INT AUTO_INCREMENT,
         user_name VARCHAR (10),
         gender VARCHAR(2),
         PRIMARY KEY(user_id)
)ENGINE=INNODB;

CREATE TABLE survey (
         survey_id INT AUTO_INCREMENT,
         rating INT, 
         movie_id INT,
         user_id INT,
         PRIMARY KEY(survey_id),
         FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
         FOREIGN KEY(user_id) REFERENCES users(user_id)
)ENGINE=INNODB;

 
INSERT INTO movies( title)
VALUES  ("Crazy Rich Asians"),
		("Searching"),
		("Alpha"),
        ("AXL"),
        ("Mile 22"),
        ("The Nun");
        
INSERT INTO users( user_name, gender)
VALUES  ("John","M"),
		("Andrea","F"),
		("Peter","M"),
        ("Leon","M"),
        ("Lisa","F");
        

        
INSERT INTO survey (rating, movie_id, user_id)
VALUES (5,1,1),(4,2,1),(3,3,1),(1,4,1),(4,5,1),(4,6,1),
       (5,1,2),(3,2,2),(5,3,2),(2,4,2),(4,5,2),(1,6,2),
       (4,1,3),(4,2,3),(4,3,3),(2,4,3),(3,5,3),(3,6,3),
       (3,1,4),(4,2,4),(4,3,4),(3,4,4),(3,5,4),(4,6,4),
       (5,1,5),(5,2,5),(5,3,5),(2,4,5),(4,5,5),(1,6,5);
	    
        

        