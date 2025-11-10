/* **What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill) for a data analyst?** 

- Identify skills in high demand and associated with high average salaries for Data Analyst roles
- Why? Targets skills that offer job secrity (high demand) and financial benefits (high salaries), offering strategic insights for career development in data analysis
*/

With skills_demand as (
    SELECT 
        skills_job_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    FROM job_postings_fact
    Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL 
    GROUP BY    
         skills_job_dim.skill_id,
         skills_dim.skills
),

average_salary as(
    SELECT 
        skills_job_dim.skill_id,
        skills_dim.skills,
        ROUND(AVG(job_postings_fact.salary_year_avg),0) as avg_salary
    FROM job_postings_fact
    Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL 
    GROUP BY    
        skills_job_dim.skill_id,
        skills_dim.skills
)

SELECT 
    skills_demand.skill_id,
    skills_demand.skills,
    skills_demand.demand_count,
    average_salary.avg_salary
from skills_demand
Inner join average_salary on skills_demand.skill_id = average_salary.skill_id

ORDER BY
    skills_demand.demand_count DESC,
    average_salary.avg_salary DESC
LIMIT 25;