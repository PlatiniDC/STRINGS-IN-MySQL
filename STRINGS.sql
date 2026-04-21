 -- Strings function
 
 -- string functions are set of in built functions for manipulating, searching and formatting text data.
 
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
;
-- If you run the above prompt. it creates a table of the first name of each employee and the amount of characters each name contains.

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;
-- the above prompt will show a table of each first names with 3 letters, then 4, then 5 and lastly 6.

SELECT first_name, UPPER(first_name)
FROM employee_demographics;
-- The above prompt returns the first name in upper case.

SELECT ('           sky             ') ;
-- if you run this prompt, you will see the word sky falls in the middle. so to get rid of the spaces
-- you need the TRIM  string function. 

SELECT TRIM('           sky             ') ;
-- TRIM has both left and right trim, left to remove space on the left and vice versa for right .
SELECT LTRIM('           sky             ') ;
-- TRIM is always left Trim by default
SELECT RTRIM('           sky             ') ;

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;
-- if the above prompt is run, it returns four cahrccters from the left of each employee first name.

SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics
;
-- if the above prompt is run, it returns four cahrccters from the right of each employee first name.
-- but instead of using the above, you can use the substring function.

SELECT first_name, 
SUBSTRING(first_name, 3,2)
FROM employee_demographics
;
-- The substring will allow you select the position you want to start at, and also select how many 
-- characters you want to go after choosing the position.
-- the above code means you want the first name of each employee to start at the third position and just 
-- display two letters after. n:b the firrst digit reps the position you want to start and the second digir
-- reps the amount of letters.

SELECT birth_date,
SUBSTRING(birth_date, 6,2) AS birth_month
FROM employee_demographics
;
-- IF YOU RUN THE ABOVE PROMPT, IT SELECTS OUT THE MONTH CHARACTERS FROM THE BIRTHDATE. AND THE ALIAS
-- HELPS GIVE THE COLUMN A NAME( BIRTH MONTH.)

SELECT first_name, REPLACE (first_name, 'a' , 'z')
FROM employee_demographics
;
-- if you run this prompt, every first name having small letter a in it will have the letter a replaced with z.

SELECT LOCATE('M' , 'UTHMAN');
-- THIS PROMPT TELLS YOU THAT LETTER M IS THE FOURTH LETTER IN THE NAME UTHMAN

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics
;

-- IF YOU RUN THE ABOVE PROMPT, YOU WILL SEE THAT ALL OTHER FIRST NAME WILL SHOW ZERO, EXCEPT FOR 
-- (ANN AND ANDY).

SELECT first_name, last_name,
CONCAT(first_name,last_name)
FROM employee_demographics
;
-- if you run the above prompt. a new column is  combining bot first and last names but you will notice no 
-- space in between them, but that can be corrected. see below. 

SELECT first_name, last_name,
CONCAT(first_name,'  ',last_name) AS full_name
FROM employee_demographics
;
-- The above prompt puts space between them, thus the alias helps give the column a title(full name)