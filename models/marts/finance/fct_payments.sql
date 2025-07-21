with payments as (

    select 

        payment_id, 
        created_at, 
        customer_id,
        car_id, 
        amount,
        
        case 
            when amount < 1500 then 'small'
            when amount between 1500 and 3000 then 'medium'
            else 'large'
        end as cash_inflows

    from {{ ref('int_payments_joined_to_bookings') }}

)

select * from payments