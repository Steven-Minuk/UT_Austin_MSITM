/*
Average Population of Each Continent
	Given the CITY and COUNTRY tables, query the names of all the continents (COUTNRY.Continent) and their repective average city populations(CITY.Population) rounded down to the nearest integer.
    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

USE UTAustin_MSITM;

# Answer
Select COUNTRY.Continent, FLOOR(AVG(CITY.POPULATION)) from COUNTRY inner join CITY on COUNTRY.CODE = CITY.COUNTRYCODE group by COUNTRY.Continent;

/*
Correct Output:
Asia 693038
Europe 175138
Oceania 109189
South America 147435
Africa 274439
*/