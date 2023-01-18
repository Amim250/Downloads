suse class01;
select * from big_mart;


#1. WRITE a sql query to show all Item_Identifier
select Item_Identifier from big_mart;

#2. WRITE a sql query to showcount of total  Item_Identifier
select count(Item_Identifier) from big_mart;

#3. WRITE a sql query to show maximum Item Weight
select max(Item_Weight) from big_mart;

#4. WRITE a sql query to show mainimum Item Weight
select min(Item_Weight) from big_mart;

#5. WRITE a sql query to show average Item Weight
select avg(Item_Weight) from big_mart;

#6. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat 
select count(Item_Fat_Content) from big_mart where Item_Fat_Content="Low Fat";

#7. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular
select count(Item_Fat_Content) from big_mart where Item_Fat_Content="Regular";

#8. WRITE a query TO show maximum Item_MRP
select max(Item_MRP) from big_mart;

#9. WRITE a query TO show minimum Item_MRP
select min(Item_MRP) from big_mart;

#10. WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200
select Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP from big_mart where Item_MRP >200;

#11. WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
select max(Item_MRP) from big_mart where Item_Fat_Content="Low Fat";

#12. WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS Low Fat
 select min(Item_MRP) from big_mart where Item_Fat_Content="Low Fat";

#13. WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select * from big_mart where Item_MRP between 50 and 100;

#14. WRITE a query to show ALL UNIQUE value Item_Fat_Content
select distinct(Item_Fat_Content) from big_mart;

#15.WRITE a query to show ALL UNIQUE value Item_Type
select distinct(Item_Type) from big_mart;

#16. WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from big_mart order by Item_MRP desc;

#17. WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales
select * from big_mart order by Item_Outlet_Sales asc;

#18. WRITE a query to show ALL DATA IN ascending order BY Item_Type 
select * from big_mart order by Item_Type asc;

#19. WRITE a query to show DATA OF item_type dairy & Meat
select item_type from big_mart where Item_Type in("dairy","meat");

#20. WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct outlet_size from big_mart;

#21. WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct(Outlet_Location_Type) from big_mart;

#22. WRITE a query to show ALL UNIQUE value OF Outlet_Type 
select distinct(Outlet_Type) from big_mart;

#23. WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending
select Item_Type,count(Item_Identifier)NO_OF_item
from big_mart
group by Item_Type
order by NO_OF_item desc;

#24. WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending
select Outlet_Size,count(Item_Identifier)No_OF_item
from big_mart
group by Outlet_Size
order by No_OF_item asc;

#25. WRITE a query to show count NO. OF item BY 
select  count(Item_Identifier)No_Of_Item from big_mart;

#26. WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending
select Outlet_Type,count(Item_Identifier)No_OF_Item
from big_mart
group by Outlet_Type 
order by No_OF_Item desc;

#27. WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending
select Outlet_Location_Type,count(Item_Identifier)No_OF_Item
from big_mart 
group by Outlet_Location_Type 
order by No_OF_Item desc;

#28. WRITE a query to show maximum MRP BY Item_Type
select Item_Type,max(Item_MRP) from big_mart
group by Item_Type;

#29. WRITE a query to show minimum MRP BY Item_Type
select Item_Type,min(Item_MRP) from big_mart 
group by Item_Type;

#30. WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select Outlet_Establishment_Year,min(Item_MRP) from big_mart
group by Outlet_Establishment_Year
order by min(Item_MRP) desc;

#31. WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select Outlet_Establishment_Year,max(Item_MRP) from big_mart
group by Outlet_Establishment_Year
order by max(Item_MRP) desc;

#32. WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending
select Outlet_Size,avg(Item_MRP) from big_mart
group by Outlet_Size 
order by avg(Item_MRP) desc;

#33. WRITE a query to show average MRP BY Outlet_Size
select Outlet_Size,avg(Item_MRP) from big_mart 
group by Outlet_Size;

#34. WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select  Outlet_Type,avg(Item_MRP) from big_mart 
group by Outlet_Type
order by avg(Item_MRP)asc;

#35. WRITE a query to show maximum MRP BY Outlet_Type
select Outlet_Type,min(Item_MRP)
from big_mart 
group by Outlet_Type; 

#36. .WRITE a query to show maximum Item_Weight BY Item_Type
select Item_Type,max(Item_Weight) 
from big_mart 
group by Item_Type;

#37. WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year
select Outlet_Establishment_Year,max(Item_Weight)
 from big_mart 
 group by Outlet_Establishment_Year;

#38. WRITE a query to show minimum Item_Weight BY Outlet_Type 
select Outlet_Type,min(Item_Weight)
from big_mart 
group by Outlet_Type;

#39. WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending
select  Outlet_Location_Type,avg(Item_Weight)
from big_mart 
group by  Outlet_Location_Type
order by avg(Item_Weight) desc;

#40. WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select Item_Type,max(Item_Outlet_Sales)
from big_mart 
group by Item_Type;

#41. WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select Item_Type,min(Item_Outlet_Sales)
from big_mart 
group by Item_Type;
 
#42. WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
select Outlet_Establishment_Year,min(Item_Outlet_Sales)
from big_mart 
group by Outlet_Establishment_Year;

#43. WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending
select Outlet_Establishment_Year,max(Item_Outlet_Sales)
from big_mart 
group by Outlet_Establishment_Year
order by max(Item_Outlet_Sales) desc;

#44. WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending
select Outlet_Size,avg(Item_Outlet_Sales)
from big_mart 
group by Outlet_Size 
order by avg(Item_Outlet_Sales) desc;

#45. WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
select Outlet_Size,avg(Item_Outlet_Sales)
from big_mart 
group by Outlet_Size;

#46. WRITE a query to show average Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,avg(Item_Outlet_Sales)
from big_mart 
group by Outlet_Type;

select avg(Item_Outlet_Sales)
from big_mart 
group by Outlet_Size;

#47. WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,max(Item_Outlet_Sales)
from big_mart 
group by Outlet_Type;

#48. WRITE a query to show total Item_Outlet_Sales BY 
select sum(Item_Outlet_Sales) from big_mart;

#49. WRITE a query to show total Item_Outlet_Sales BY Item_Type
select Item_Type,sum(Item_Outlet_Sales) from big_mart
group by Item_Type; 

#50. WRITE a query to show total Item_Outlet_Sales BY 
select sum(Item_Outlet_Sales) from big_mart;

#51. WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select Item_Fat_Content,sum(Item_Outlet_Sales) from big_mart
group by Item_Fat_Content; 

#52. WRITE a query to show maximum Item_Visibility BY Item_Type
select Item_Type,max(Item_Visibility)
from big_mart 
group by Item_Type;

#53. WRITE a query to show Minimum Item_Visibility BY Item_Type 
select Item_Type,min(Item_Visibility)
from big_mart 
group by Item_Type;

#54. WRITE a query to show total Item_Outlet_Sales BY Item_Type but
# ONLY WHERE Outlet_Location_Type IS Tier 1
select Item_Type,sum(Item_Outlet_Sales)
from big_mart
where Outlet_Location_Type="Tier 1"
group by Item_Type
order by sum(Item_Outlet_Sales) desc;

 select * from big_mart;
#55. WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF
select  sum(Item_Outlet_Sales),Item_Type
from big_mart 
where Item_Fat_Content in("Low","LF")
group by Item_Type
order by sum(Item_Outlet_Sales) desc;





























































