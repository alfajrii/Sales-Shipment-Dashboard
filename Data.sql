 select 
  od.order_id,
  sh.order_date,
  sh.ship_date,
  sh.ship_mode,
  od.customer_id,
  cs.customer_name,
  cs.segment,
  rg.city,
  rg.state,
  rg.region,
  rg.country,
  od.postal_code,
  od.product_id,
  pd.product_name,
  pd.category,
  pd.subcategory,
  od.sales,
  od.quantity,
  od.quantity,
  od.discount,
  od.profit,

 from `data_warehouse.orders` as od
  left join `data_warehouse.customer` as cs
    on od.customer_id = cs.customer_id
  left join `data_warehouse.shipment` as sh
    on od.order_id = sh.order_id
  left join `data_warehouse.region` as rg
    on od.postal_code = rg.postal_code
  left join `data_warehouse.product` as pd
    on od.product_id = pd.product_id
