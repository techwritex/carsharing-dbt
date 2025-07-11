with payments as (

    select 

        payment_id, 
        created_at, 
        booking_id, 
        amount

    from {{ ref('stg_pg__payments') }}

),

bookings as (

    select

        booking_id, 
        created_at, 
        customer_id,
		car_id

    from {{ ref('int_bookings_joined_to_customers_and_cars') }}

),

payments_joined_to_bookings as(

    select 

        payments.payment_id, 
        payments.created_at, 
        bookings.customer_id,
        bookings.car_id, 
        payments.amount

    from payments

    left join bookings
    on payments.booking_id = bookings.booking_id

)

select * from payments_joined_to_bookings