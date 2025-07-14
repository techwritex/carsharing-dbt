with payments as (

    select 

        payment_id, 
        created_at, 
        customer_id,
        car_id, 
        amount

    from {{ ref('int_payments_joined_to_bookings') }}

)

select * from payments