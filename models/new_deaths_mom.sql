--LOCATION VISE NEW DEATHS (MOM)
select left(cast(date as date),7) as year_month, location,sum(new_deaths) as new_deaths from  "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPALI"
Group by left(cast(date as date),7),location

CREATE TABLE "INTERVIEW_DB"."PLAYGROUND_DEEPALI"."NEW_DEATHS_MOM" AS
select left(cast(date as date),7) as year_month, location,sum(new_deaths) as new_deaths from  "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DEEPALI"
Group by left(cast(date as date),7),location
select * from  "INTERVIEW_DB"."PLAYGROUND_DEEPALI"."NEW_DEATHS_MOM"
