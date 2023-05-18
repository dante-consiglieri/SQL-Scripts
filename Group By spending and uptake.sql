select
"companyName" ,
"DATETRUNC(mes)" "month",
sum("Active employees"/ "Addressable employees") uptake,
sum("Amount (EUR)") spending
from knowledge.companies_revenue cr2
where "DATETRUNC(mes)" between '2022-01-01' and '2022-11-01' and "Parent Name" = 'Serunion'
group by "companyId (companies)",
"companyName",
"DATETRUNC(mes)"
order by "companyName", "DATETRUNC(mes)" desc