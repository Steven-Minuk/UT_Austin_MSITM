/*
Higher than 75 Marks
	Query the Name of any student int STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name.
    If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/

USE UTAustin_MSITM;
# Answer:
Select Name From STUDENTS Where Marks > 75 order by right(Name, 3), ID;

/*
Correct Output:
	Stuart
	Kristeen
	Christene
	Amina
	Aamina
	Priya
	Heraldo
	Scarlet
	Julia
	Salma
	Britney
	Priyanka
	Samantha
	Vivek
	Belvet
	Devil
	Evil
*/