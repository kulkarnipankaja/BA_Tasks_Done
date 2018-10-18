select * from countrylanguage;
select Countrycode,Percentage from countrylanguage where Percentage >= 6.0;
Select Language,Percentage from countrylanguage 
where language="English" and Percentage <5.0;
select Language,CountryCode from countrylanguage where Percentage >7.0;
select * from countrylanguage order by Percentage desc;
select Percentage as Max_percentage from countrylanguage   ;

create table Training As
select Language ,Percentage from countrylanguage
order by Percentage;

select * from Training;




Create database BAtraining;
CREATE TABLE BAstudent(
    StudID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);

CREATE TABLE Exam (
    examID int,
    examName varchar(255),
    Centername varchar(255),
	examcity varchar(255)
    
);

CREATE TABLE Books(
    bookID int,
    bookName varchar(255),
    Authorname varchar(255),
    issueDate varchar(255)
);

insert into BAstudent(StudID,LastName,FirstName,Address,City)
values('2','Smith','John','yahhoo','known');

insert into Exam (examID,examName,Centername,examcity)
values('1235','Cmat','CMU','CA');

select * from Exam;

Create view ExamStud as
select examName,Centername
from Exam
where examcity="PA";

select * from ExamStud;

create database donttest;
create table whytest(test1 varchar(90),test2 int(80));
drop database donttest;
DRop table whytest;

truncate table Exam;

select * from Exam;



ALTER TABLE Exam
ADD zipcode integer(255);

ALTER TABLE Exam
DROP COLUMN zipcode;
