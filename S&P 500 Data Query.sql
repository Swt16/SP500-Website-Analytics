
/*
use database S__P_500_BY_DOMAIN_AND_AGGREGATED_BY_TICKERS_SAMPLE

select * from sp_500
limit 100

select count(*) from sp_500
-- 6,330,745 total records

select distinct company_name, ticker from sp_500
-- 498 tickers

select min(date), max(date) from sp_500
-- 1/1/2018
-- 1/20/2022
-- will probably omit 2022 since it's not a full calendar year

*/

-- Because all the columns are stored as varchar,
-- need to convert them into int, double, or dates
with sp_500_cte as (
    select 
    company_name,
    ticker,
    domain,
    date::date "DATE",
    country,
    desktop_visits::int AS "DESKTOP_VISITS",
    desktop_bounce_rate::double "DESKTOP_BOUNCE_RATE",
    desktop_avg_visit_duration::double "DESKTOP_AVG_VISIT_DURATION",
    desktop_pages_per_visit::double "DESKTOP_PAGES_PER_VISIT",
    mobile_visits::int "MOBILE_VISITS",
    mobile_bounce_rate::double "MOBILE_BOUNCE_RATE",
    mobile_avg_visit_duration::double "MOBILE_AVG_VISIT_DURATION",
    mobile_pages_per_visit::double "MOBILE_PAGES_PER_VISIT",
    total_visits::int "TOTAL_VISITS",
    total_bounce_rate::double "TOTAL_BOUNCE_RATE",
    total_avg_visit_duration::double "TOTAL_AVG_VISIT_DURATION",
    total_pages_per_visit::double "TOTAL_PAGES_PER_VISIT",
    rank() over (partition by date, ticker order by total_visits::int desc) "TOTAL_VISIT_RANK"
    from sp_500
    where date >= '2018-01-01'
    and date <= '2021-12-31'
)

select 
*
from sp_500_cte
where TOTAL_VISIT_RANK = 1


