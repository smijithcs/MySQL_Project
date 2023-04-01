use sql_project;

select * from athlete_events;




---- 1. Write a sql quiery to fetch the count of olympics season have been held?

select count(distinct Year) as Total_olympic_seasons
from athlete_events;



---- 2 List down all Olympics games held so far with place .


select distinct a.year,a.season,a.city 
from athlete_events a 
order by Year;


---- 3. List down the total no of nations who participated in each olympics game?

select Games,count(distinct NOC) as Number_of_nations
from athlete_events 
group by Games;



----- 4. Which year saw the  highest no of countries participating in olympics

select Games,count(distinct NOC) as Highest_no_of_countries
from athlete_events 
group by Games 
order by Highest_no_of_countries 
desc limit 1;

----- 5  Which year saw the  lowest no of countries participating in olympics

select Games,count(distinct NOC) as Lowest_no_of_countries 
from athlete_events 
group by Games 
order by Lowest_no_of_countries 
asc limit 1;

----- 6. top 5 most time gold winner in the history of olympics

select Name_,Medal,count(Medal) as winner 
from athlete_events 
where Medal = 'Gold' 
group by Name_,Medal 
order by count(Medal) 
desc limit 5 ;


---- 7.most time gold won country in the history of olympics

select Team,Medal,count(*) as Winner 
from athlete_events 
where Medal = 'Gold' 
group by Team,Medal 
order by count(*) 
desc limit 1;



---- 8.olympic champions list by each season

select Team,count(Medal) as winner ,Year 
from athlete_events 
where Medal= 'Gold' 
group by Team,Medal, Year
order by count(Medal) desc limit 34;


---- 9 olympic mens football gold medal winner list

select Team,Medal,Event,Year
from athlete_events 
where Event= "Football Men's Football" and Medal = 'Gold'  
group by Team,Medal,Event,Year 
order by Year ;

select Team,Medal,Event,Year
from athlete_events 
where Event= "Football Men's Football" and Medal = 'Gold' 
group by Team,Medal,Event,year 
order by Team;

--- 10 How many gold medal india have won till the date


select Team,count(Medal) as Gold_medal 
from athlete_events 
where Medal = 'Gold' and Team = 'India' 
group by Team;


----- 11. top 5 medal getter for india

select Name_,Team,count(Medal) as Gold_medal 
from athlete_events 
where Medal = 'Gold' and Team = 'India' 
group by Team,Name_ 
order by  Gold_medal desc limit 5 ;

