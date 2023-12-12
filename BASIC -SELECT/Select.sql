-- Modify it to show the population of Germany
  SELECT population FROM world
  WHERE name = 'Germany'

-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
   SELECT name, population FROM world
    WHERE name IN ('Sweden','Norway','Denmark');

/* Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). 
The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries 
with an area between 200,000 and 250,000. */
  SELECT name,area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- Give the name and the per capita GDP for those countries with a population of at least 200 million.
  select name,GDP/population from world
       where population > 200000000

-- Show the name and population in millions for the countries of the continent 'South America'. 
-- Divide the population by 1000000 to get population in millions.
  select name, population/1000000 from world
         where continent='South America'

-- Show the name and population for France, Germany, Italy
  select name, population from world 
           where name in ('France','Germany','Italy')

-- Show the countries which have a name that includes the word 'United'
    select name from world 
       where name like "%United%"
