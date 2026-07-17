select distinct
    employee_id,
    store_id,
    employee_first_name,
    employee_last_name,
    employee_email,
    job_title,
    salary,
    employee_is_active,
    employee_created_timestamp,
    employee_updated_timestamp,
    employee_processed_at,
    current_timestamp() as employee_gold_processed_at
from {{ ref("obt_t") }}
