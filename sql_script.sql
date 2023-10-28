select orders.date as order_date,product_category.categoryname as category_name,product.prodname as product_name,product.price as product_price,orders.quantity as order_qty,(product.price*orders.quantity) as total_sales,customers.customeremail as cust_email,customers.customercity as cust_city
from customers 
inner join orders on customers.customerid = orders.CustomerID
inner join product on orders.prodnumber = product.ProdNumber
inner join product_category on product.category = product_category.categoryid
order by order_date asc,order_qty asc,total_sales asc;

