SELECT t1.company_name, t1."Date", b2.company_balance, b2.pecunpay_balance 
FROM (
SELECT company_name, MAX(LEFT(created_at, 10):: date) as "Date", MAX(created_at) as "created"
FROM dataanalytics_silver_postgres_transactionalcoredb_public.balance b 
GROUP BY company_name) t1
INNER JOIN dataanalytics_silver_postgres_transactionalcoredb_public.balance b2
ON b2.company_name = t1.company_name AND b2.created_at = t1.created	