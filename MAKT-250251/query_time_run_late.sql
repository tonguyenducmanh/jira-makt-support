select  '2024-12-16' as date, count(1) as time_run_late from sme.crm_sync_queue_archive where 
(start_time between '2024-12-16 11:00:00' and '2024-12-16 15:35:00') 
and  (EXTRACT(EPOCH FROM (start_time -created))/3600 > 1)
union
select  '2024-12-17' as date, count(1) as time_run_late from sme.crm_sync_queue_archive where 
(start_time between '2024-12-17 11:00:00' and '2024-12-17 15:35:00') 
and  (EXTRACT(EPOCH FROM (start_time -created))/3600 > 1)
union
select  '2024-12-18' as date, count(1) as time_run_late from sme.crm_sync_queue_archive where 
(start_time between '2024-12-18 11:00:00' and '2024-12-18 15:35:00') 
and  (EXTRACT(EPOCH FROM (start_time -created))/3600 > 1)
union
select  '2024-12-19' as date, count(1) as time_run_late from sme.crm_sync_queue_archive where 
(start_time between '2024-12-19 11:00:00' and '2024-12-19 15:35:00') 
and  (EXTRACT(EPOCH FROM (start_time -created))/3600 > 1)
union
select  '2024-12-20' as date, count(1) as time_run_late from sme.crm_sync_queue_archive where 
(start_time between '2024-12-20 11:00:00' and '2024-12-20 15:35:00') 
and  (EXTRACT(EPOCH FROM (start_time -created))/3600 > 1)
