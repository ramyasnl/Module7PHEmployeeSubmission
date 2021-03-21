# Module7PHEmployeeSubmission<br/>

# Overview of the analysis #<br/>

Our aim  is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program using postgresql. <br/>
Also we write a report that summarizes the analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.<br/>

## Strategic analysis and results ##<br/>

Data inputs are in 6 csv files ,for the above analysis we need only 3 of them employees,dept_emp,titles.<br/>

<img src="https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/ERD1.png" width="500" height="400"/>



Step 1: Create schema tables in our database and fill them up with the data from corresponding csv files.<br/>
Step 2: Create a new table called'retirement_titles' by combining the columns from 'employee_table' and 'titles'and exported as corresponding csv<br/>

<img src="https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/retirement_title1.png" width="900" height="500"/><br/>



Step 3: The commmon column for both the tables is 'emp_no',we join both with that as primary key .<br/>
Step 4: Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.</br>
Step 5: Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.<br/>
Step 6: Using the starter code we do DISTINCT ON and we create another table "unique_titles"and exported as corresponding csv</br>

<img src="https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/unique%20titles2.png" width="1000" height="700"/><br/>


Step 7: Since we need the count of employees ready for retirement by their current title  we use GRUOPBY & COUNT to generate "retiring_titles.csv"</br>

![alt text](https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/retiring_titles3.png)<br/>

Step 8 : Mentorship Eligibility table is created from 'employees' and 'titles' <br/>
Step 9 : Using DISTINCT ON ,ORDER BY <INTO we created the 'mentorship_eligibility_table'<br/>
Step 10 : Table we created is exported to 'mentorship_eligibility.csv' 

![alt text](https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/mentorship.png)<br/>

## Technical Difficulties and Alternate method ##<br/>

i.   While creating our retirement_titles table we got repetition of the same employee with different title on differnt time period , <br/>
     we filtered the data by taking only the latest title by using the DISTINCT ON function .<br/>
ii.  This can also be done by PARTITION BY function .<br/>
iii. While creating our mentorship_eligibility we used DISTINCT ON to filterout the first occurence of the emp_no , </br>
     while filtering the data by birthdate dont miss that they are current employee .<br/>
     
## Result Summary ##

 <img src="https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/retiring_titles3.png" width="500" height="400"/><br/>
 
From this table we come to the conclusion that 30K of  Senior Engineers , Senior Staff are going to move out ,<br/>
12 - 14 K of Engineer,Staff will be retiring in the future ,<br/>
the best way to handle this is by promoting the eligible current employees in the role of Engineer ,Staff as Seniors and filling their places<br/> 
by freshly recruteing and training 40 K new members, which can be done through multiple phases of recruitment.<br/>

<img src="https://github.com/ramyasnl/Module7PHEmployeeSubmission/blob/main/screenshots/retiring_titles3.png" width="500" height="400"/><br/>


From the mentorship table we have created we have 500K mentorship eligible candidates to handle the forthcoming “silver tsunami” 


