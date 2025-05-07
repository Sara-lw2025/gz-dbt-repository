 SELECT 
    f.date_date,
    (operational_margin - ads_cost) AS ads_margin,
    average_basket,
    operational_margin,
    d.ads_cost,
    d.impression,
    d.click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    shipping_cost

 FROM {{ref('finance_days')}} AS f
 left join {{ref('int_campaigns_day')}} AS d

 on f.date_date = d.date_date

