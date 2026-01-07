with 

source as (

    select * from {{ source('jaffle_shop', 'locations') }}

),

renamed as (

    select
        location_id,
        location_name,
        tax_rate,
        opened_date

    from source

)

select * from renamed