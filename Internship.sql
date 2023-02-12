--Creating Deliveries table
create table deliveries(
id int,
inning int,
over int,
ball int,
batsman text,
non_striker text,
bowler text,
batsman_runs int,
extra_runs int,
total_runs int,
is_wicket int,
dismissal_kind text,
player_dismissed text,
fielder text,
extras_type text,
batting_team text,
bowling_team text)

--Creating Matches table
create table matches(
id int,
city text,
date date,
player_of_match text,
venue text,
neutral_venue int,
team1 text,
team2 text,
toss_winner text,
toss_decision text,
winner text,
result text,
result_margin int,
eliminator text,
method text,
umpire1 text,
umpire2 text)

-- Importing data from CSV files in both the tables
copy matches from 'D:\Internship\SQL task\IPL_matches.csv' Delimiter ',' csv header;
copy deliveries from 'D:\Internship\SQL task\IPL_Ball.csv' Delimiter ',' csv header;

select * from matches;
select * from deliveries;

---Select the top 20 rows of the deliveries table.
select * from deliveries limit 20;

---- Select the top 20 rows of the matches table.
select * from matches limit 20;

----Fetch data of all the matches played on 2nd May 2013.
select * from matches where date='2013-05-02';

--Fetch data of all the matches where the margin of victory is more than 100 runs.
select * from matches where result_margin>100;

---Fetch data of all the matches where the final scores of both teams tied and order it in
select * from matches where result ='tie' order by date desc;

--Get the count of cities that have hosted an IPL match
select count(distinct city) as Cities_Hosted_IPL_Matches from matches;
 
 
-- Players who were bowled
select * from deliveries where dismissal_kind='bowled'.














 
 
 
 
 
 
 
 