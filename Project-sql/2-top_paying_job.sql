/***Question: What are the top-paying data analyst jobs?**
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries.
- Why? 
    Aims to highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.

*/

SELECT 
    job_id as id,
    name as company_name,
    job_title as title,
    job_location as location,
    job_schedule_type as schedule_type ,
    salary_year_avg as avg_salary,
    job_posted_date as posted_date
from    
    job_postings_fact
Left JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
Where   
    job_title_short = 'Data Analyst' 
    and job_location = 'Anywhere'
    and salary_year_avg is NOT NULL
ORDER BY    
    salary_year_avg DESC
LIMIT 10;