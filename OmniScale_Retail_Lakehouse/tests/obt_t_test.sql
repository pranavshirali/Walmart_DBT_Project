{{ config(severity="warn") }}

select 1
from {{ ref("obt_t") }} as obt_t
where
    obt_t.order_id is null
    or obt_t.customer_id is null
    or obt_t.employee_id is null
    or obt_t.order_item_id is null
    or obt_t.product_id is null
    or obt_t.store_id is null
