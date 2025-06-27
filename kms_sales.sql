SELECT * FROM kms_sales;
-- 1. Which product category had the highest sales?
select Product_Category, sum(sales ) as higest_sales 
from kms_sales
group by Product_Category;
-- Technology had the highest sale of 5984248.50

-- 2. What are the Top 3 and Bottom 3 regions in terms of sales?
select region, sum(sales) as sales
from kms_sales
group by Region
order by sales desc;

-- The top 3 region re west, ontario and prarie and the bottom 3 region re Nunavut, Northwest Territories and Yukon

-- 3. What were the total sales of appliances in Ontario?
select sum(sales ) as Total_sales 
from kms_sales
where Province = "ontario" and Product_Sub_Category = "appliances";

-- therefore the total sales of appliances in ontario re 202346.84

-- 4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
select Customer_Name, sum(sales) as Total_Revenue , count(Order_ID) as Total_Orders, avg(sales) as Avg_Order_Value
from kms_sales
group by Customer_Name
order by Total_Revenue asc
limit 10;
-- Their total revenue is low and their order is little aswell with their avg order value.. if they can increase their order range i think that will help

-- 5. KMS incurred the most shipping cost using which shipping method?
select Ship_Mode, sum(Shipping_Cost) as Total_shipping_cost 
from kms_sales
group by Ship_Mode
order by Total_shipping_cost  desc
limit 1;
-- Delivery truck was the most incurred shipping method 

-- 6.Who are the most valuable customers, and what products or services do they typically purchase?
select Customer_Name,sum(sales) as Total_Revenue, count(Order_ID) as Order_Total
from kms_sales
group by Customer_Name
order by Total_Revenue desc
limit 10;
-- This shows the Top 10 customer with the highest total value
select Customer_Name, Product_Name, count(*) as Purchase_Count, sum(sales) as Total_Spent 
FROM kms_sales
where Customer_Name in 
( select Customer_Name
from kms_sales
group by Customer_Name
order by sum(Sales) desc
)
group by Customer_Name, Product_Name
order by Customer_Name, Total_Spent desc
limit 10;
 -- this shows what the pruchase the most 
 
 -- 7. Which small business customer had the highest sales?
select Customer_Name,sum(sales) as Highest_Sales 
from kms_sales
where Customer_Segment = "small business" 
group by Customer_Name
order by Highest_Sales  desc
limit 1;

-- Dannis Kane have the highest sales of 75967.59

-- 8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
 select customer_name,count(order_id) as Number_of_orders
 from kms_sales
 where Customer_Segment = 'Corporate' and year(Order_Date) between 2009 and 2012
 group by Customer_Name
 order by Number_of_orders desc
 limit 1;
 -- Adam Hart 
 
 -- 9. Which consumer customer was the most profitable one?
 select customer_name, sum(profit) as Total_profit
 from kms_sales
 group by Customer_Name
 order by Total_profit desc
 limit 1;
 -- Emily Phan was the profitable one,
 
 -- 10. Which customer returned items, and what segment do they belong to?
 select Customer_Name,Customer_Segment,Profit
 from kms_sales
 where Profit <0 ;
 -- Negative profit is an indicator of returned item because the compant loose money on that.
 
 -- 11. If the delivery truck is the most economical but the slowest shipping method and 
-- Express Air is the fastest but the most expensive one, do you think the company
-- appropriately spent shipping costs based on the Order Priority? Explain your answer

select order_priority, ship_mode, count(*) as Num_orders, avg(shipping_cost) as Avg_shipping_cost
 from kms_sales
 group by order_priority, ship_mode
 order by order_priority,Avg_shipping_cost desc;
 -- Yes the company did...This table below shows delivery truck have the highest number of order 