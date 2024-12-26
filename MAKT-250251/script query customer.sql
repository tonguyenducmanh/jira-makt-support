-- query customer
select * from sme.account_object
where
    (
        account_object_id::text = '26d185a2-e37a-443d-af67-86d45dedb86a' or
        (crm_id is not null and crm_id = '26d185a2-e37a-443d-af67-86d45dedb86a') or
        (crm_id is not null and crm_id = '123345') or
        (crm_id is null and lower(trim(account_object_code)) = any(array['dhpt0000452-hns3', 'dhpt0000452-hns3_crm']))
    )

--- check trung

select ao.crm_id,ao.account_object_id, ao.account_object_code
from sme.account_object ao
where ao.account_object_code ilike '%_CRM'
or lower(trim(ao.account_object_code)) = 'dhpt0000452-hns3'
or lower(trim(ao.account_object_code)) = 'dhpt0000452-hns3_crm'