select

    payment_id,
    sum(amount)

from {{ ref('fct_payments') }}

group by 1

having sum(amount) < 0