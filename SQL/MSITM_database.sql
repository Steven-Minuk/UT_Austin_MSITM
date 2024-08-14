CREATE DATABASE UTAustin_MSITM;
USE UTAustin_MSITM;

CREATE TABLE STUDENTS(
	ID INT,
	Name char(25),
	Marks INT
);

select * from students;

CREATE TABLE Employee(
	employee_id INT,
    name char(25),
    months INT,
    salary INT
);

SELECT * FROM Employee;

CREATE TABLE CITY(
	ID INT,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT,
    FOREIGN KEY (COUNTRYCODE) references COUNTRY(CODE)
);

select * from city;

CREATE TABLE COUNTRY(
	CODE VARCHAR(3) NOT NULL PRIMARY KEY,
    NAME VARCHAR(44),
    CONTINENT VARCHAR(13),
    REGION VARCHAR(25),
    SURFACEAREA INT,
    INDEPYEAR VARCHAR(5),
    POPULATION INT,
    LIFEEXPECTANCY VARCHAR(4),
    GNP INT,
    GNPOLD VARCHAR(9),
    LOCALNAME VARCHAR(44),
    GOVERNMENTFORM VARCHAR(44),
    HEADOFSTATE VARCHAR(32),
    CAPITAL VARCHAR(4),
    CODE2 VARCHAR(2)
);

SELECT * FROM COUNTRY;

CREATE TABLE Hackers(
	hacker_id INT NOT NULL PRIMARY KEY,
    name varchar(25)
);

Select * from Hackers;

CREATE TABLE Difficulty(
	difficulty_level INT NOT NULL PRIMARY KEY,
    score INT
);

Select * from difficulty;

CREATE TABLE Challenges(
	challenge_id INT NOT NULL PRIMARY KEY,
    hacker_id INT,
    difficulty_level INT,
    FOREIGN KEY (hacker_id) references Hackers(hacker_id),
    FOREIGN KEY (difficulty_level) references Difficulty(difficulty_level)
);

Select * from challenges;

CREATE TABLE Submissions(
	submission_id INT NOT NULL PRIMARY KEY,
    hacker_id INT,
    challenge_id INT,
    score INT,
    FOREIGN KEY (hacker_id) references Hackers(hacker_id),
    FOREIGN KEY (challenge_id) references Challenges(challenge_id)
);

Select * from submissions;