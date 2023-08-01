use jobs;
select * from Job_title;
select * from Company;
select * from Job_Categorie;
select * from Job_Type;
select * from Experience_level;
select * from Requirment_of_the_company;
select * from JobTitle_Requirment;


-- Salaire moyen par niveau d'expérience

SELECT Experience_level.level_name, AVG(Job_Title.mnm_salary_usd) AS average_salary
FROM Job_Title
JOIN Experience_level ON Job_Title.level_Id = Experience_level.level_Id
GROUP BY Experience_level.level_name;




-- Nombre d'emplois par catégorie de poste
SELECT Job_Categorie.job_name, COUNT(Job_Title.job_title_Id) AS job_count
FROM Job_Categorie
LEFT JOIN Job_Title ON Job_Categorie.job_categorie_Id = Job_Title.job_categorie_Id
GROUP BY Job_Categorie.job_name;





-- Emplois ayant des exigences spécifiques (par exemple : 'Data quality')
SELECT Job_Title.job_title_name, Job_Title.requirment_Id, Requirment_of_the_company.requirment_name
FROM Job_Title
JOIN Requirment_of_the_company ON Job_Title.requirment_Id = Requirment_of_the_company.requirment_Id
WHERE Requirment_of_the_company.requirment_name = 'Data quality';











