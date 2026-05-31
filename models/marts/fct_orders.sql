select
    o.order_id,
    o.customer_id,
    o.product_id,
    o.quantity,
    p.price,
    o.quantity * p.price as total_amount
from {{ ref('stg_orders') }} o
left join {{ ref('stg_products') }} p
    on o.product_id = p.product_id