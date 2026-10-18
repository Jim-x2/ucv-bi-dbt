

select
    cast(sale_id as bigint) as sale_id,
    to_date(sale_date) as sale_date,
    cast(product_id as bigint) as product_id,
    cast(customer_id as bigint) as customer_id,
    cast(store_id as bigint) as store_id,
    cast(quantity as decimal(18,2)) as quantity,
    cast(unit_price as decimal(18,2)) as unit_price,
    cast(quantity as decimal(18,2))
        * cast(unit_price as decimal(18,2)) as sales_amount
from {{ source('bronze', 'sales_raw') }}
