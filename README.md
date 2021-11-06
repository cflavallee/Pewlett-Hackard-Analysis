# Pewlett-Hackard-Analysis

## Overview
The purpose of this analysis was to use SQL and Postgres to find out how many employees at Pewlett Hackard are set to retire, as well as those eligible for a mentorship program.  Analyzing and understanding these numbers will help Pewlett Hackard to make decisions that could ease the wave of retirees in the near future.  

## Results
Overall, the numbers show some glaring issues that will need to be addressed.  Below are some of the key takeaways from the data, along with images taken from Postgres queries and tables. 

### Total Employees Retirement-Eligible

* There are an extremely large number of employees set to retire from Pewlett Hackard in the near future, potentially up to 90,398 (see Fig. 1).  This could have serious repercussions for the company if not handled properly.  

Fig. 1
![Total Retirement-Eligible](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/total%20retiring%20employees.PNG)

### Employees Set To Retire by Title

* The greatest number of retirees fall under the titles of Senior Engineer and Senior Staff (see Fig. 2).  This means that current and future employees will need proper training to fill these Senior roles.  The mentorship program can help with this need.  

Fig. 2
![Retiring Titles](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/retiring%20titles.PNG)

### Mentorship-Eligible Employees by Title

* The number of employees eligible for the mentorship program is quite small (see Fig. 3).  The program could easily be expanded, even if a fraction of retiring employees stay on board part-time to mentor. 

* Another area to focus on could be management roles and management structure.  Only 2 of the 9 department managers are retirement-eligible and none of the mentorship eligible employees are managers (see Fig. 4).  This means that there is an opportunity to work with current managers and the mentorship program.

Fig. 3
![Mentorship Titles](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/mentorship%20titles.PNG)

Fig. 4
![Mentorship Titles](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/current%20department%20managers.PNG)

## Summary
The number of roles that will need to be filled is massive, potentially around 90,000 positions in the near future, including 2 manager roles.  The mentorship program may be able to alleviate some of the burden, but additional measures and hiring strategies will need to be deployed to ensure the continued success of the company.  

Additionally, analyzing the salaries of those who retire ......

The number of qualified retirement-ready inviduals far exceeds those deemed eligible for a mentorship program (see Fig. 5).  An expansion of the mentorship program would be advisable to ensure that enough qualified staff will take over for those retiring. One way to do this and ensure the continued longevity of the company could be to focus on the individuals that were more recently hired. This could help with retaining those staff members and eventually transition them into leadership roles.  

Fig. 5
![Mentorship Hire Date](https://github.com/cflavallee/Pewlett-Hackard-Analysis/blob/main/most%20recent%20hire%20by%20titles.PNG)

