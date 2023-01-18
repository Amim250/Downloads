use class01;
select * from Product_Filaed;

select * from product_filaed02;


#1. write query to show name from NYC_1
select host_name from Product_Filaed02;

#2. write query to show count of id in nyc_1
select count(id) from product_filaed02;

#3. write query to show count of id in nyc_2
 select count(id) from product_filaed;

#4. write query to show host id in nyc_1
select host_id from product_filaed02;

#5. write query to show all unique host id from nyc_1
select distinct(host_id) from product_filaed02;

#6. write query to show all unique neighbourhood_group from nyc_1
select distinct(neighbourhood_group) from product_filaed02;

#7. write query to show all unique neighbourhood from nyc_1
select distinct(neighbourhood) from product_filaed02;

#8. write query to show room_type from nyc_1
select room_type from product_filaed02;

#9. write query to show all values of Brooklyn & Manhattan from nyc_1
select * from product_filaed02
where neighbourhood_group in('Brooklyn','Manhattan');

#10. write query to show unique value of room type from nyc_1
select distinct(room_type) from product_filaed02;

#11. write query to show maximum price from nyc_2
select max(price) from product_filaed;

#12. write query to show maximum price from nyc_2
select min(price) from product_filaed; 

#13. write query to show average price from nyc_2
select avg(price) from product_filaed;

#14. write query to show minimum value of minimum_nights from nyc_2
select min(minimum_nights) from product_filaed;

#15. write query to show maximum value of minimum_nights from nyc_2
select max(minimum_nights) from  product_filaed;

#16. write query to show average availability_365
select avg(availability_365) from product_filaed;

#17. .write query to show id , availability_365 and all availability_365 value is greater than 300
select id,availability_365 from product_filaed where availability_365 >300;

#18. write query to show count of id where price is in between 300 to 400
select count(id) from product_filaed where price between 300 and 400;

#19. write query to show count of id where minimum_nights spend is less than 5
select count(id) from product_filaed where minimum_nights <5;

#20. write query to show count where minimum_nights spend is greater than 100
select count(id) from product_filaed where minimum_nights >100;

#21. write query to show all data of nyc_1 & nyc_2
select * from product_filaed join product_filaed02
on product_filaed.id=product_filaed02.id;

#22. write query to show host name and price
select h.host_name,p.price 
from product_filaed02 as h join product_filaed as p
on h.id=p.id;

#23. write query to show room_type and price
select r.room_type,p.price
from product_filaed02 as r join product_filaed as p
on r.id=p.id;

#24. write query to show neighbourhood_group&minimum_nights spend
select n.neighbourhood_group,m.minimum_nights
from product_filaed02 as n join product_filaed as m 
on n.id=m.id;
 
#25. write query to show neighbourhood & availability_365
select n.neighbourhood,a.availability_365
from product_filaed02 as n join product_filaed as a 
on n.id=a.id;

#26. write query to show total price by neighbourhood_group
select p2.neighbourhood_group,sum(p1.price)Total_Price
from product_filaed02 as p2 join product_filaed as p1
on p1.id=p2.id 
group by p2.neighbourhood_group
order by sum(p1.price);

#27. write query to show maximum price spend by neighbourhood_group
select p2.neighbourhood_group,max(p1.price)max_Price
from product_filaed02 as p2 join product_filaed as p1
on p1.id=p2.id
group by p2.neighbourhood_group;

#28. write query to show maximum night spend by neigneighbourhood_group
select p2.neighbourhood_group,max(p1.minimum_nights)Max_night
from product_filaed02 as p2 join product_filaed as p1
on p1.id=p2.id  
group by p2.neighbourhood_group;


#29. write query to show maximum reviews_per_month spend by neighbourhood
select p2.neighbourhood,max(p1.reviews_per_month )Max_reviews
from product_filaed02 as p2 join product_filaed as p1
on p1.id=p2.id 
group by p2.neighbourhood;

#30. write query to show maximum price by room type
select p2.room_type,max(p1.price)Max_price
from product_filaed02 as p2 join product_filaed as p1
on p1.id =p2.id 
group by p2.room_type;

#31.write query to show average number_of_reviews by room_type
select p2.room_type,avg(p1.number_of_reviews)number_reviews
from product_filaed02 as p2 join product_filaed as p1
on p1.id =p2.id 
group by p2.room_type;

#32. write query to show average price by room type
select p2.room_type,avg(p1.price)avg_price
from product_filaed02 as p2 join product_filaed as p1 
on p1.id =p2.id 
group by p2.room_type;


#33.write query to show average night spend by room type
select p2.room_type,avg(p1.minimum_nights)avg_night
from product_filaed02 as p2 join product_filaed as p1
on p1.id =p2.id 
group by p2.room_type;

#34. write query to show average price by room type but average price is less than 100
select p2.room_type,avg(p1.price)average_price
from product_filaed02 as p2 join product_filaed as p1
on p1.id =p2.id 
group by p2.room_type
having avg(p1.price)<100;

#35. write query to show average night by neighbourhood and average_nights is greater than 5
select p2.neighbourhood,avg(p1.minimum_nights)average_nights 
from product_filaed02 as p2 join product_filaed as p1
on p1.id =p2.id
group by  p2.neighbourhood
having avg(p1.minimum_nights) >5;

#36. write query to show all data from nyc_1 and price is greater than 200 using sub-query
select * from product_filaed02 
where id in(select id from product_filaed where price >200); 

#37. write query to show all values from nyc_2 table and host id is 314941
select * from product_filaed 
where id in(select id from product_filaed02 where host_id= 314941);

#38. Find all pairs of id having the same host id, each pair coming once only.
#select distinct n.id,n1.host_id
from product_filaed02 n,product_filaed02 n1
where n.id,n1.host_id 
order by host_id;

#39. write sql query to show fetch all records that have the term cozy in name
select * from product_filaed02 
where name like "%cozy%";

#40. write query to show price host id  neighbourhood_groupof manhattanneighbourhood_group
select p.price,p2.id,p2.host_id,p2.neighbourhood_group
from product_filaed02 as p2 join product_filaed as p
on p.id=p2.id 
where p2.neighbourhood_group="Manhattan";

#41. write query to show id , host name, neighbourhood and price but only for 
#Upper West Side & Williamsburg neighbourhood also price is greater than 100
select p.price,p2.id,p2.host_name,p2.neighbourhood
from product_filaed02 as p2 join product_filaed as p
on p.id=p2.id 
where p2.neighbourhood in("Upper West Side","Williamsburg") and price <100;

#42.write query to show id , host name, neighbourhood and price for 
#host name Elise and neighbourhood is Bedford-Stuyvesant
select p2.id,p2.host_name,p2.neighbourhood,p.price
from product_filaed02 as p2 join product_filaed as p
on p2.id=p.id
where p2.host_name="Elise" and p2.neighbourhood="Bedford-Stuyvesant";

#43.write query to show host_name,availability_365,minimum_nights only for 100+ 
#availability_365 and minimum_night
select p2.host_name,p2.id,p.availability_365,p.minimum_nights 
from product_filaed02 as p2 join product_filaed as p
on p.id=p2.id 
where p.availability_365 >100 and p.minimum_nights >100;

#44.write query to show to fetch id ,host_name , number_of_reviews, 
#and reviews_per_month but show only that records where 
#number of reviews are 500+ and review per month is 5+
select p2.id,p2.host_name,p.number_of_reviews,p.reviews_per_month
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id 
where number_of_reviews >500 and reviews_per_month >5;

#45.write query to show neighbourhood_group which have most total number of review
select p2.neighbourhood_group,sum(p.number_of_reviews)Total_Number_Review
from product_filaed02 as p2 join product_filaed as p 
on p.id=p2.id 
group by p2.neighbourhood_group
order by p.number_of_reviews desc limit 1;

#46. write query to show host name which have most cheaper total price(Cheaper=minimum)
select p2.host_name,min(p.price)Total_Price
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id 
group by p2.host_name 
order by p.price asc limit 10;

#47. write query to show host name which have most costly total price(Costly=maximum)
select p2.host_name,max(p.price)Total_Price
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id
group by p2.host_name 
order by p.price desc limit 5;

#48. write query to show host name which have max price using subquer
select p2.host_name,p.price
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id 
where p.price in(select max(price) from product_filaed);

#49. write query to show neighbourhood_group which price are less than 100
select p2.neighbourhood_group,p.price
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id
where p.price <100;

#50. write query to find max price, average availability_365 for each room_type and order in ascending by maximum pric
select p2.room_type,avg(p.availability_365)average,max(p.price)maximum_price
from product_filaed02 as p2 join product_filaed as p
on p.id =p2.id
group by room_type 
order by maximum_price asc;



select * from product_filaed02;























