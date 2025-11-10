/* **Question: What are the most in-demand skills for data analysts in Thailand?**

- Identify the top  in-demand skills for a data analyst in Thailand.
- Focus on all job postings.
- Why? Retrieves the top  skills with the highest demand in the job market, providing insights into the most valuable skills for job seekers.
*/

SELECT 
    company_dim.name as company_name,
    skills,
    count(skills_job_dim.job_id) as demand_count
FROM job_postings_fact
Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
INNER JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' and 
    job_location like '%Thailand%' 
GROUP BY    
    skills,
    company_name
ORDER BY 
    demand_count DESC

/*
 10 ทักษะที่มีความต้องการสูงสุดสำหรับ Data Analyst ในประเทศไทย (ปี 2023)
SQL — ความต้องการ 1,156 
Python — ความต้องการ 972 
Excel — ความต้องการ 571 
Power BI — ความต้องการ 538 
Tableau — ความต้องการ 534 
R — ความต้องการ 406 
AWS — ความต้องการ 265 
Java — ความต้องการ 239
Azure — ความต้องการ 232 
SAS — ความต้องการ 210 
*/

/*
Top 10 Most Demanded Data Analyst Skills in Thailand (2023)
SQL — 1,156 mentions
Python — 972 mentions
Excel — 571 mentions
Power BI — 538 mentions
Tableau — 534 mentions
R — 406 mentions
AWS — 265 mentions
Java — 239 mentions
Azure — 232 mentions
SAS — 210 mentions
*/