with 

source as (

    select * from {{ source('raw_data', 'ship') }}

),

renamed as (

    select
        orders_id,
        -- remove shipping_fee_1 beacuse is duplicate
        shipping_fee,
        logcost,
        CAST (ship_cost AS FLOAT64) AS shipping_cost

    from source

)

select * from renamed
