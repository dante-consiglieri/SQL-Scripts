select 
"transactionId",
t."companyId",
t."employeeId",
t."merchantId",
c."companyName",
e."name",
e.surname,
"cardId",
"amount.amountInCents",
category,
concept,
"merchantName",
"merchantInfo.merchantCategory",
t.state,
t."state(complete)",
t."iso2CountryCode",
t."Date",
t."complete_Date"
from dwh."Transactions" t
join dwh."Companies" c 
on t."companyId" = c."companyId"
join dwh.employees e 
on t."employeeId" =  e."userId" 
where current_date::date - "Date"::date < 30 and e."name" ='Juan' and c."Parent Name" = 'Cobee'
order by "Date"