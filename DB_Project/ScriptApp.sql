INSERT INTO Account (dateCreated, name,  city)
VALUES ('01/01/18' , 'Alex' ,  'kristianstad');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('02/01/18' , 'Aries' ,  'Bankok');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('02/01/18' , 'Muhis' ,  'Huagzhou');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('02/01/18' , 'Majid' ,  'Dubai');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('03/01/18' , 'Major' ,  'Nairobi');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('04/01/18' , 'Hermione' ,  'Addis Ababa');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('04/01/18' , 'Kristian' ,  'Dear es Salaam');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('04/01/18' , 'Kolaris' ,  'Lagos');

INSERT INTO Account (dateCreated, name,  city)
VALUES ('04/01/18' , 'ahmed' ,  'Djibouti');


INSERT INTO Account (dateCreated, name,  city)
VALUES ('05/01/18' , 'Jojo' ,  'Tehran');



DELETE FROM Account WHERE idAccount = 11;





UPDATE Account 
SET name = 'Christian' 
WHERE idAccount = 8;


select * from Account ;







INSERT INTO Employee (name)
VALUES ('Kalle');


INSERT INTO Employee (name)
VALUES ('Kyyro');


INSERT INTO Employee (name)
VALUES ('Kabax');


INSERT INTO Employee (name)
VALUES ('Abdi');


INSERT INTO Employee (name)
VALUES ('Colonel');


INSERT INTO Employee (name)
VALUES ('Sirppa');


INSERT INTO Employee (name)
VALUES ('Wacad');


INSERT INTO Employee (name)
VALUES ('Qablalax');


INSERT INTO Employee (name)
VALUES ('Shushumo');


INSERT INTO Employee (name)
VALUES ('Barkhad');


INSERT INTO Employee (name)
VALUES ('Xareed');

select * from Employee;


INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Construction', 4);


INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Marketing', 1);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Construction', 4);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Programming', 5);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'database Adminstration', 6);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Construction', 4);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Child Minding', 2);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Programming', 5);

INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Consultancy', 7);


INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Consultancy', 7);


INSERT INTO Posts (datePosted, jobType, Account_idAccount)
VALUES ('04/01/18', 'Cleaner', 2);

select * from Posts;












DROP table Offers;



CREATE TABLE Offers (
    idOffers INT,
    offerDate VARCHAR(45),
    OfferType ENUM ("Trial ", "Temporary " ,"Permanent"),
    idEmployee INT,
    Account_idAccount INT,
    idPosts INT,
    PRIMARY KEY (idOffers),
    FOREIGN KEY (idEmployee) REFERENCES Employee(idEmployee),
    FOREIGN KEY (Account_idAccount , idPosts) REFERENCES Applications(Account_idAccount , Posts_idPosts)
);

CREATE INDEX indexApplications
ON Applications (Account_idAccount, Posts_idPosts);

select * from Offers;


INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (1, '06/01/18', 'Trial', 4, 2 , 6);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (2, '06/01/18', 'Temporary', 4, 2 , 6);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (3, '06/01/18', 'Trial', 4, 2 , 6);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (4, '06/01/18', 'Permanent', 2, 3 , 8);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (5, '06/01/18', 'Trial', 2, 2 , 8);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (6, '07/01/18', 'Temporary', 5, 8 , 6);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (7, '07/01/18', 'Temporary', 5, 8 , 13);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (8, '08/01/18', 'Trial', 4, 8 , 6);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (9, '09/01/18', 'Temporary', 4, 3 , 12);

INSERT INTO Offers (idOffers, offerDate, offerType, idEmployee, Account_idAccount, idPosts)
VALUES (10, '010/01/18', 'Permanent', 4, 3 , 9);













ALTER TABLE Applications DROP COLUMN ApplicationID;

select * from Applications;








DELETE FROM POSTS WHERE idPosts = 1;

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (1, 2, 2);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (2, 5, 2);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (3, 6, 2);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (4, 8, 2);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (5, 5, 3);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (6, 8, 3);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (7, 9, 3);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (8, 12, 3);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (9, 13, 8);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (10, 14, 8);

INSERT INTO Applications (applicationID, Posts_idPosts, Account_idAccount)
VALUES (11, 6, 8);

select sum(Account.idAccount) from Account;





select * from offers;




select name , OfferType from Employee, Offers where Offers.idEmployee = Employee.idEmployee;

select name, city, jobType from Account , Posts where Account.idAccount = Posts.Account_idAccount;



select Account.name as applicant , offerType, Employee.name as employee
from Account, Offers , Employee 
where Offers.Account_idAccount = Account.idAccount and Offers.idEmployee = Employee.idEmployee;



select * from Employee;
select * from Account;
select * from Offers;






