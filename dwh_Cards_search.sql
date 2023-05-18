select
"employeeId (cards)",
c."companyName",
e."name",
e.surname,
e."legalId",
"state (cards)",
"cardId (cards)",
bin,
tag,
"creationTimestamp (cards)"
from dwh."Cards(dif-duplicates)" cdd
join dwh.employees e 
on cdd."employeeId (cards)" = e."userId" 
join dwh."Companies" c 
on cdd."companyId (cards)" = c."companyId" 
where e."name" = 'Dante' and c."companyName" = 'Cobee'