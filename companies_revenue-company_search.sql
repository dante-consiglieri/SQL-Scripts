select
"Parent Id",
"companyId (companies)","Parent Name","companyName",
"DATETRUNC(mes)",
"category (manual adjustment)",
"Employees",
"Addressable employees",
"Active employees",
"Strictly Active Employees",
"Strictly Active Employees (company)",
"Churned employees",
"Interchange fee (revenue)",
"Marketplace monetization",
"Amount (EUR)",
"auto_close_day(adjusted)",
"Addressable Date (companies) for union",
"Active Date (company)",
"Churn Company Date"
from knowledge.companies_revenue cr
where ((DATE_PART('year', "DATETRUNC(mes)") - DATE_PART('year', current_date)) * 12 +
       (DATE_PART('month', "DATETRUNC(mes)") - DATE_PART('month', current_date))) < 2 and "Parent Name" like 'Cobee'
order by "Parent Id", "companyId (companies)", "DATETRUNC(mes)" desc, "category (manual adjustment)"
