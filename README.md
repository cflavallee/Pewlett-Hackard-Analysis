# Pewlett-Hackard-Analysis

## Overview
The purpose of this analysis was to use SQL and Postgres to find out how many employees at Pewlett Hackard are set to retire, as well as those eligible for a mentorship program.  Analyzing and understanding these numbers will help Pewlett Hackard to make decisions that could ease the wave of retirees in the near future.  

## Results
Overall, the numbers show some glaring issues that will need to be addressed.  Below are some of the key takeaways from the data, along with images taken from Postgres queries and tables. 

### Total Employees Retirement-Eligible

* There are an extremely large number of employees set to retire from Pewlett Hackard in the near future, potentially up to 72,458 (see Fig. 1), which accounts for about 30% of total employees.  This could have serious repercussions for the company if not handled properly.  

Fig. 1
![Total Retirement-Eligible](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/total%20retiring%20employees.PNG)

### Employees Set To Retire by Title

* The greatest number of retirees fall under the titles of Senior Engineer and Senior Staff (see Fig. 2).  This means that current and future employees will need proper training to fill these Senior roles.  The mentorship program can help with this need.  

Fig. 2
![Retiring Titles](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main//Images/retiring%20titles.PNG)

### Mentorship-Eligible Employees 

* The number of employees eligible for the mentorship program is quite small at 1,549 (see Fig. 3).  The program could easily be expanded, even if a fraction of retiring employees stay on board part-time to mentor. 

* Another area to focus on could be management roles and management structure.  Only 2 of the 9 department managers are retirement-eligible (see Fig. 2) and none of the mentorship eligible employees are managers (see Fig. 4).  This could be an opportunity to work with current managers related to the mentorship program, and/or possiblly restructure how departments are managed.

Fig. 3
![Mentorship Total](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/total%20mentorship%20eligible%20employees.PNG)

Fig. 4 
![current Managers](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/current%20department%20managers.PNG)

## Summary
1.  The number of roles that will need to be filled is massive, potentially around 72,000 positions in the near future, including 2 manager roles.  The mentorship program may be able to alleviate some of the burden, but additional measures and hiring strategies will need to be deployed to ensure the continued success of the company.  

2.  The number of qualified retirement-ready inviduals far exceeds those deemed eligible for a mentorship program, whether looking at title or department (see Fig. 4 & Fig. 5).  

Fig. 5
![Retiring Departments](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/retiring%20employees%20by%20department.PNG) 

Fig. 6
![Mentorship Departments](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/mentorship%20employees%20by%20department.PNG)

3.  An expansion of the mentorship program would be advisable to ensure that enough qualified staff will take over for those retiring. One way to do this and ensure the continued longevity of the company could be to focus on individuals that were more recently hired. By expanding the program to include those with under 3 years of experience at the company and looking by title (compare Fig. 7 & Fig. 8), the number of mentorship-eligible employees increases greatly, specifically for Staff and Engineer (positions that could transition to Senior roles).  By expanding the mentorship program, these employees could become further invested in the company's success and longevity. 

Fig. 7
![Mentorship Titles](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/mentorship%20titles.PNG)

Fig. 8
![Mentorship Hire Date](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/Images/most%20recent%20hire%20by%20titles.PNG)


## Additional Analysis Recommendation
One additional area to investigate would be how a large number of employees retiring or becoming part-time will affect the labor budget for the company.  This would inform hiring practices as well as how the overall budget is distributed.  
