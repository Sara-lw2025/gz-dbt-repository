with 

source as (

    select * from {{ source('raw_data', 'facebook') }}

),

renamed as (

    select
        date_date,
        paid_source AS paid_source_2,
        campaign_key,
        campgn_name AS campaign_name,
        CAST (ads_cost AS FLOAT64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed
