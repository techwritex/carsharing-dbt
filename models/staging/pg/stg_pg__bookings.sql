with source as (
    
    select * from {{ source('pg','booking') }}

),

staged as (

    select
    
        booking_id,
        booking_date as created_at,
        customer_id,
        car_id
    
    from source

)

select * from staged