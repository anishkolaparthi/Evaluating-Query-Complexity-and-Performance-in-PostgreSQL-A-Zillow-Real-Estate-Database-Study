--Query 1
SELECT mp.RegionName, (mp.date_2023_10_31 * (fc.date_1_31_2024_ + 100) / 100) AS target_price
FROM median_price mp
INNER JOIN forecast fc ON mp.RegionId = fc.RegionID
WHERE (mp.date_2023_10_31 * (fc.date_1_31_2024_ + 100) / 100) BETWEEN 324000 AND 396000;


--Query 2
select
avg(date_2023_05_31 - date_2020_02_29) as AVERAGECHANGE
from 
median_price
where
date_2020_02_29 is not NULL
AND date_2023_05_31 is not NULL;


--Query 3
Select
Count(*) as numberofregions
From
Price_cut
Where
Date_2023_03_31 is not null
And (date_2023_03_31 – date_2023_02_20)/date_2023_02_20 > 0.1;


--Query 4 - 
select 
z.regionID, z.regionname, z.date_2023_10_31 
from zori z 
join median_sale ms 
on ms.regionID = z.regionID  
where
z.statename = 'CA'
and
z.date_2023_10_31 < 
(select ((ms.date_2023_09_30*0.03)/12) as Median
 from median_sale ms 
where ms.regionID = 753899);

--Query 5 – 
select 
statename,count(distinct regionID), Avg(z.date_2023_10_31) as Avg_2023, Avg(z.date_2022_10_31) as Avg_2022, avg(z.date_2021_10_31) as Avg_2021
from zori z
where statename is not null
group by statename
order by statename;