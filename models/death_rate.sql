--LOCATION VISE MOM DEATH RATE
select location,left(cast(date as date),7) as year_month, (sum(total_deaths)/sum(total_cases))*100 as death_rate from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPALI"
group by location,left(cast(date as date),7)

CREATE TABLE "INTERVIEW_DB"."PLAYGROUND_DEEPALI"."DEATH_RATE" AS
select location,left(cast(date as date),7) as year_month, (sum(total_deaths)/sum(total_cases))*100 as death_rate from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPALI"
group by location,left(cast(date as date),7)

select * from  "INTERVIEW_DB"."PLAYGROUND_DEEPALI"."DEATH_RATE"