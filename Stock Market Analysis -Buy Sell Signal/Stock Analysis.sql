use Assignment;

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 0 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Create table

create table `eicher motors` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);
create table `bajaj auto` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);
create table `hero motocorp` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);
create table `tvs motors` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);
create table `infosys` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);
create table `tcs` (`Date` DATE, `Open Price` DOUBLE, `High Price` DOUBLE, `Low Price` DOUBLE, `Close Price` DOUBLE, WAP DOUBLE, `No.of Shares` INT, `No. of Trades` INT, `Total Turnover (Rs.)` INT, `Deliverable Quantity` INT, `% Deli. Qty to Traded Qty` DOUBLE, `Spread High-Low` DOUBLE, `Spread Close-Open` DOUBLE);

# Had to launch mysql with --local-infile option as shown below to be successfully able to load the provided .csv files

#/usr/local/mysql/bin/mysql --local-infile -u root -p

LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/Eicher Motors.csv' INTO TABLE `eicher motors` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');
LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/Bajaj Auto.csv' INTO TABLE `bajaj auto` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');
LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/Hero Motocorp.csv' INTO TABLE `hero motocorp` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');
LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/TVS Motors.csv' INTO TABLE `tvs motors` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');
LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/Infosys.csv' INTO TABLE `infosys` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');
LOAD DATA LOCAL INFILE '/Users/sdittaka/Downloads/Assignment/TCS.csv' INTO TABLE `tcs` FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r' IGNORE 1 LINES (@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`, `No.of Shares`, `No. of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) set `Date` = STR_TO_DATE(@date_time_variable, '%d-%M-%Y');

# LOAD DATA imputed the missing values with 0s wherever applicable

select count(*) from `eicher motors`;
select count(*) from `bajaj auto`;
select count(*) from `hero motocorp`;
select count(*) from `infosys`;
select count(*) from `tcs`;
select count(*) from `tvs motors`;

select * from `eicher motors`;
select * from `bajaj auto`;
select * from `hero motocorp`;
select * from `infosys`;
select * from `tcs`;
select * from `tvs motors`;

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Used window function avg() with ROWS 19 preceding to obtain the 20/50 DAY MAs

create table eicher1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `eicher motors` order by 1 asc;

create table bajaj1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as 
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `bajaj auto` order by 1 asc;

create table hero1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as 
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `hero motocorp` order by 1 asc;

create table infosys1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as 
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `infosys` order by 1 asc;

create table tcs1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as 
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `tcs` order by 1 asc;

create table tvs1 (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE) as
	select `Date`, `Close Price`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 19 PRECEDING) as `20 Day MA`,
		avg(`Close Price`) over(ORDER BY `Date` ROWS 49 PRECEDING) as `50 Day MA`
	from `tvs motors` order by 1 asc;

# Alternate approach to obtain 20/50 Day MAs

/*
select `Date`, `Close Price`,
avg(`Close Price`) over(ORDER BY `Date` rows between 19 preceding and current row) as `20 Day MA`,
avg(`Close Price`) over(ORDER BY `Date` rows between 49 preceding and current row) as `50 Day MA`
from `eicher motors` order by 1 asc;
*/

select * from eicher1;
select * from bajaj1;
select * from hero1;
select * from infosys1;
select * from tcs1;
select * from tvs1;

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Used inner join to join all the tables and obtain the close price from each stock

create table master (`Date` DATE, Bajaj DOUBLE, TCS DOUBLE, TVS DOUBLE, Infosys DOUBLE, Eicher DOUBLE, Hero DOUBLE) as
	select bajaj.`Date`, bajaj.`Close Price` Bajaj, tcs.`Close Price` TCS, tvs.`Close Price` TVS, infosys.`Close Price` Infosys, eicher.`Close Price` Eicher, hero.`Close Price` Hero
	from `bajaj auto` bajaj 
		inner join `tcs` on bajaj.`Date`=tcs.`Date`
			inner join `tvs motors` tvs on tcs.`Date` = tvs.`Date`
				inner join `infosys` on tvs.`Date` = infosys.`Date`
					inner join `eicher motors` eicher on infosys.`Date` = eicher.`Date`
						inner join `hero motocorp` hero on eicher.`Date` = hero.`Date`;

select count(*) from master;

select * from master order by date asc;

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

create table bajaj2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from bajaj1;

create table eicher2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from eicher1;

create table hero2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from hero1;

create table infosys2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from infosys1;

create table tcs2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from tcs1;

create table tvs2 (`Date` DATE, `Close Price` DOUBLE, `Signal` TEXT) as
	select `Date`, `Close Price`,
		CASE
			WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) <= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Buy'
			WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`,1) OVER(ORDER BY `Date`) >= LAG(`50 Day MA`,1) OVER(ORDER BY `Date`) THEN 'Sell'
			ELSE 'Hold'
		END as 'Signal'
	from tvs1;

select * from bajaj2;
select * from eicher2;
select * from hero2;
select * from infosys2;
select * from tcs2;
select * from tvs2;

# Alternate approach to obtain signal using co-related subquery

/*
create table bajaj_signal (`Date` DATE, `Close Price` DOUBLE, `20 Day MA` DOUBLE, `50 Day MA` DOUBLE, `Signal` TEXT) as
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
	CASE
		WHEN `20 Day MA` > `50 Day MA` AND (select `20 Day MA` from bajaj1 b2 where b2.`Date` < b1.`Date` order by `Date` DESC LIMIT 1) <= (select `50 Day MA` from bajaj1 b2 where b2.`Date` < b1.`Date` order by `Date` DESC LIMIT 1) THEN 'Buy'
		WHEN `20 Day MA` < `50 Day MA` AND (select `20 Day MA` from bajaj1 b2 where b2.`Date` < b1.`Date` order by `Date` DESC LIMIT 1) >= (select `50 Day MA` from bajaj1 b2 where b2.`Date` < b1.`Date` order by `Date` DESC LIMIT 1) THEN 'Sell'
		ELSE 'Hold'
 	END as 'Signal'
from bajaj1 b1;
*/

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 4 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# User defined function to get the signal for a date for Bajaj stock

create function bajaj_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from bajaj2 where `Date` = d
		);

# Validating function

select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, bajaj_buy_sell_hold(`Date`) as `Signal` from bajaj1;

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Task 5 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Creating the UDF for other stocks as well for analysis

create function eicher_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from eicher2 where `Date` = d
		);
        
create function hero_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from hero2 where `Date` = d
		);
        
create function infosys_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from infosys2 where `Date` = d
		);

create function tcs_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from tcs2 where `Date` = d
		);

create function tvs_buy_sell_hold (d DATE)
	returns text deterministic
	return 
		(
		select `signal` from tvs2 where `Date` = d
		);

# Validating functions

select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, eicher_buy_sell_hold(`Date`) as `Signal` from eicher1;
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, hero_buy_sell_hold(`Date`) as `Signal` from hero1;
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, infosys_buy_sell_hold(`Date`) as `Signal` from infosys1;
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, tcs_buy_sell_hold(`Date`) as `Signal` from tcs1;
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`, tvs_buy_sell_hold(`Date`) as `Signal` from tvs1;

# Extracting all stocks signals against Date

select 
	`Date`, 
	bajaj_buy_sell_hold(`Date`) as `Bajaj Signal`, 
	eicher_buy_sell_hold(`Date`) as `Eicher Signal`,
	hero_buy_sell_hold(`Date`) as `Hero Signal`, 
	infosys_buy_sell_hold(`Date`) as `Infosys Signal`, 
	tcs_buy_sell_hold(`Date`) as `TCS Signal`,
	tvs_buy_sell_hold(`Date`) as `TVS Signal` 
from master order by `Date` asc;


