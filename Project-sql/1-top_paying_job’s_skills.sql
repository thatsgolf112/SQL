/***Question: What are the top-paying data analyst jobs, and what skills are required?** 

- Identify the top 10 highest-paying Data Analyst jobs and the specific skills required for these roles.
- Filters for roles with specified salaries that are remote
- Why? It provides a detailed look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develop that align with top salaries

*/


With top_paying_job as(
        SELECT 
            job_id,
            name as company_name,
            job_title as title,
            salary_year_avg as avg_salary
        from    
            job_postings_fact
        Left JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
        Where   
            job_title_short = 'Data Analyst' 
            and job_location = 'Anywhere'
            and salary_year_avg is NOT NULL
       ORDER BY    
            salary_year_avg DESC
        LIMIT 10
)

SELECT 
    top_paying_job.*,
    skills 
from top_paying_job
Inner join skills_job_dim on top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY    
    avg_salary DESC


/*
Top Paying Data Analyst Skills
SQL — appears in 8 jobs, average salary $207,320
Python — appears in 7 jobs, average salary $205,937
Tableau — appears in 6 jobs, average salary $214,260
R — appears in 4 jobs, average salary $215,313
Excel — appears in 3 jobs, average salary $215,610
*/

?8

/*
[
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "title": "Associate Director- Data Insights",
    "avg_salary": "255829.5",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "title": "Data Analyst, Marketing",
    "avg_salary": "232423.0",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "title": "Data Analyst, Marketing",
    "avg_salary": "232423.0",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "title": "Data Analyst, Marketing",
    "avg_salary": "232423.0",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "title": "Data Analyst, Marketing",
    "avg_salary": "232423.0",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "title": "Data Analyst, Marketing",
    "avg_salary": "232423.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "title": "Data Analyst (Hybrid/Remote)",
    "avg_salary": "217000.0",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "title": "Data Analyst (Hybrid/Remote)",
    "avg_salary": "217000.0",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "title": "Data Analyst (Hybrid/Remote)",
    "avg_salary": "217000.0",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "title": "Data Analyst (Hybrid/Remote)",
    "avg_salary": "217000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "title": "Data Analyst (Hybrid/Remote)",
    "avg_salary": "217000.0",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst (Remote)",
    "avg_salary": "205000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "title": "Director, Data Analyst - HYBRID",
    "avg_salary": "189309.0",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "title": "Principal Data Analyst, AV Performance Analysis",
    "avg_salary": "189000.0",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "title": "Principal Data Analyst",
    "avg_salary": "186000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "title": "ERM Data Analyst",
    "avg_salary": "184000.0",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "title": "ERM Data Analyst",
    "avg_salary": "184000.0",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "title": "ERM Data Analyst",
    "avg_salary": "184000.0",
    "skills": "r"
  }
]
*/