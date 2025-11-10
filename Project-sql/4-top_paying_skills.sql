/***What are the top skills based on salary?** 

- Look at the average salary associated with each skill for Data Analyst positions.
- Focuses on roles with specified salaries.
- Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve.
*/

SELECT 
    company_dim.name as company_name,
    skills,
    ROUND(AVG(job_postings_fact.salary_year_avg),0) as avg_salary
FROM job_postings_fact
Inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
INNER JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location like '%Thailand%' 
GROUP BY    
    skills,
    company_name
ORDER BY 
    avg_salary DESC
LIMIT 20

/*
สรุปผลวิเคราะห์เชิงลึก (Insights)
SQL และ Python คือทักษะหลักของสาย Data Analyst ไทย
 ทั้งสองทักษะถูกกล่าวถึงมากที่สุด (SQL 1,156 ครั้ง / Python 972 ครั้ง)
 แสดงให้เห็นว่าองค์กรไทยให้ความสำคัญกับการ เข้าถึงและประมวลผลข้อมูลจากฐานข้อมูลจริง
 ผู้ที่เชี่ยวชาญทั้ง SQL และ Python มีแนวโน้มได้ค่าตอบแทนสูงกว่าเฉลี่ยในสายอาชีพนี้

Visualization Skills กำลังกลายเป็นมาตรฐานใหม่ในตลาดแรงงาน
 Power BI (538 ครั้ง) และ Tableau (534 ครั้ง) ติดอันดับ Top 5
 ชี้ให้เห็นว่าองค์กรต้องการนักวิเคราะห์ที่ สามารถนำเสนอข้อมูลเชิงลึกในรูปแบบที่เข้าใจง่าย
 การสร้าง Dashboard และรายงาน Interactive กลายเป็นทักษะที่ “จำเป็น” ไม่ใช่ “เพิ่มเติม” แล้ว

Excel ยังคงเป็นพื้นฐานที่ขาดไม่ได้
 ถึงแม้จะเป็นเครื่องมือดั้งเดิม แต่ยังมีความต้องการสูง (571 ครั้ง)
 สะท้อนว่าองค์กรส่วนใหญ่ยังพึ่งพา Excel สำหรับงานรายงานภายในและการวิเคราะห์เบื้องต้น

ทักษะด้าน Cloud และ Programming เริ่มมีความสำคัญเพิ่มขึ้น
 AWS (265 ครั้ง), Azure (232 ครั้ง), Java (239 ครั้ง)
 สะท้อนแนวโน้มขององค์กรที่กำลัง ย้ายระบบวิเคราะห์ข้อมูลขึ้น Cloud และต้องการความเข้าใจด้าน Data Pipeline

R และ SAS ยังคงมีบทบาทในองค์กรขนาดใหญ่และภาคการเงิน
 R (406 ครั้ง) และ SAS (210 ครั้ง) ยังมีความต้องการต่อเนื่อง
 แสดงให้เห็นว่าบางองค์กรยังใช้เครื่องมือเชิงสถิติแบบเดิมในการวิเคราะห์ข้อมูลเชิงลึก
*/


/*
SQL and Python remain the core pillars for Thai Data Analysts.
 SQL (1,156 mentions) and Python (972 mentions) dominate the job market.
 They indicate a strong demand for professionals who can access, clean, and analyze real-world data efficiently.
 Mastery of both tools often correlates with higher salary brackets.

Data Visualization skills are becoming standard expectations.
 Power BI (538) and Tableau (534) rank among the top 5.
 Organizations increasingly value analysts who can communicate insights visually through dashboards and reports.
 Visualization is now a core competency, not just a “nice-to-have.”

Excel remains highly relevant.
 Despite newer tools, Excel (571 mentions) continues to be widely used.
 It remains the go-to tool for business reporting and quick analysis in many Thai companies.

Cloud and programming skills are emerging drivers of salary growth.
 AWS (265), Azure (232), and Java (239) reflect the shift toward cloud-based analytics environments.
 These skills bridge the gap between data analytics and data engineering.

R and SAS retain importance in enterprise and finance sectors.
 R (406) and SAS (210) are still valued for statistical modeling and legacy system compatibility.
 Their continued presence shows the diverse tech stacks within Thai organizations.
*/