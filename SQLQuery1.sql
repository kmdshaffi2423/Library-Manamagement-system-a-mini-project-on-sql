CREATE DATABASE library

CREATE TABLE Book
(
 BookID      int            primary key,
 Title            varchar(30)    not null,
 Author           INT            not null  foreign key references Author (AuthorID),  
 Category         int            not null  foreign key references Category (CategoryID),
 AvailableCopies  int            not null
 );
   select * from Book

insert into Book values(101, 'X-Men: God Loves',401, 301, 98)
insert into Book values(102, 'Mike Tyson : Undisputed Truth',402, 302, 654)
insert into Book values(103, 'V for Vendetta',403, 303, 600)
insert into Book values(104, 'When Breath Becomes Air',404, 304, 500)
insert into Book values(105, 'The Great Gatsby',405, 305,120)
insert into Book values(106, 'To Kill a Mockingbird',406,304,150)
insert into Book values(107, 'Pride and Prejudice',407,302,53)
insert into Book values(108, 'Brave New World',408,303,453)
insert into Book values(109, 'The Scarlet Letter',409,305, 252)
insert into Book values(110, 'The Lord of the Rings',410,301, 566)
insert into Book values(111,'Adventures of Tom Sawyer',402,306,370)
insert into Book values(112,'Agni Veena',400,300,100)
insert into Book values(113,'Ben Hur ',409,303,213)
insert into Book values(114,'Baburnama ',404,302,233)
insert into Book values(115,'Ancient Mariner',407,305,100)
insert into Book values(116,'Arms and the Man ',404,306,54)
insert into Book values(116,'Around the World in eighty days ',401,304,199)
insert into Book values(117,'The Moon and Sixpence ',402,301,233)
insert into Book values(118,'Far from the Madding Crowd',404,304,203)
insert into Book values(119,'Geetanjal ',406,302,203)
insert into Book values(120,'Utopi ',403,308,100)
truncate table Book  

CREATE TABLE Borrower
(
 BorrowerID         int           primary key,
 FirstName          varchar(30)   not null,
 LastName           varchar(30)   not null,
 Email              varchar(40)   not null,
 Phone              varchar(20)   not null,
 Address            varchar(200)  not null,
 
 );
select * from Borrower

insert into Borrower values(501, 'Robin', 'Steve', 'robin@gmail.com', 8937783783, 'Tirupati')
insert into Borrower values(502, 'Aadhya', 'Sree', 'aadhya100@gmail.com', 9783787873, 'Hyderabad')
insert into Borrower values(503, 'Sashi', 'Ambati', 'sashiambati62@gmail.com', 8774845673, 'Kurnool')
insert into Borrower values(504, 'Shaffi', 'Shaik', 'shaffi199@gmail.com',9876548974, 'Guntur')
insert into Borrower values(505, 'Nithin', 'Ambati', 'nithin@gmail.com', 8769085468,'VIJAYAWADA')
insert into Borrower values(506, 'Nani', 'uppala', 'nani34@gmail.com', 8769083543,'nandal')
insert into Borrower values(507, 'vishnu', 'boya', 'vishnu@gmail.com', 826545468,'alur')  
insert into Borrower values(508, 'ramya', 'Ambati', 'ramya24@gmail.com',8784562132,'VIJAYAWADA')
insert into Borrower values(509, 'basha', 'syed', 'basha23@gmail.com', 9895621235,'kurnool')
insert into Borrower values(510, 'asif', 'syed', 'asif786@gmail.com', 8775658454,'adoni')
insert into Borrower values(511,'mohammed','qureshi','mohammed44@gmail.com',8907654332,'kadapa')
insert into Borrower values(512,'raju','boya','raju43@gmail.com',7654322123,'gooty')
insert into Borrower values(513,'vishnu','kumar','vishnu@gmail.com',6578905432,'puttur')
insert into Borrower values(514,'mahesh','konda','mahesh45@gmail.com',98765456784,'chittoor')
insert into Borrower values(515,'ravi','kumar','kavi55@gmail.com',6754324567,'gudur')
insert into Borrower values(516,'sudheer','ediga','sudheer45@gmail.com',6754348978,'nellore')
insert into Borrower values(517,'abi','kumar','abi876@gmail.com',9087345621,'rajampet')
insert into Borrower values(518,'kiran','sai','kiran78@gmail.com',5643236789,'rayachoty')
insert into Borrower values(519,'uppesh','kumar','uppesh786@gmail.com',7865453487,'ongole')
insert into Borrower values(520,'RAFFIQ','mohammed','raffiq26@gmail.com',7032279243,'ALUR')
truncate table Borrower


 
 CREATE TABLE Transactions
 (
      TransactionID   int           PRIMARY KEY,
      UserID          int           not null foreign key references Borrower(BorrowerID),
      BookID          int           not null foreign key references Book(BookID),
      TransactionDate DATE          not null,
      ReturnDate      DATE          not null,
      Status          varchar(100)  not null
      );
select * from Transactions

insert into Transactions values(201,503,101,'2023-03-21','2023-03-26','Returned')
insert into Transactions values(202,502,103,'2023-03-01','2023-03-05','Returned')
insert into Transactions values(203,504,105,'2023-04-15','2023-04-20','Not Returned')
insert into Transactions values(204,501,102,'2023-04-25','2023-04-30','Returned')
insert into Transactions values(205,505,104,'2023-02-18','2023-02-23','Not Returned')
insert into Transactions values(206,506,108,'2023-03-01','2023-03-23','Not Returned')
insert into Transactions values(207,507,107,'2023-03-04','2023-03-22',' Returned')
insert into Transactions values(208,508,109,'2023-03-25','2023-03-31','Not Returned')
insert into Transactions values(209,509,110,'2023-03-06','2023-03-20',' Returned')
insert into Transactions values(210,510,110,'2023-03-24','2023-03-30','Not Returned')
insert into Transactions values(211,512,117,'2023-04-11','2023-04-23','Returned')
insert into Transactions values(212,511,113,'2023-03-15','2023-03-23','Returned')
insert into Transactions values(213,515,115,'2023-04-21','2023-04-23','Not Returned')
insert into Transactions values(214,518,110,'2023-03-04','2023-03-23','Not Returned')
insert into Transactions values(215,519,118,'2023-03-16','2023-03-20',' Returned')
insert into Transactions values(216,516,119,'2023-02-16','2023-03-27','Not Returned')
insert into Transactions values(217,517,117,'2023-01-11','2023-03-14',' Returned')
insert into Transactions values(218,518,118,'2023-02-19','2023-03-21',' Returned')
insert into Transactions values(219,519,119,'2023-03-01','2023-03-02','Not Returned')
insert into Transactions values(220,520,107,'2023-02-04','2023-03-22','Not Returned')
truncate table  Transactions

 CREATE TABLE Category
 (
      CategoryID      int         PRIMARY KEY,
      CategoryName    varchar(50)   not null,
      );
select * from Category

insert into Category values(301,'Comics')
insert into Category values(302,'Sports')
insert into Category values(304,'Fantasy')
insert into Category values(305,'Action')
insert into Category values(306,'Adventure')
insert into Category values(307,'Detective')
insert into Category values(308,'Mystery')
insert into Category values(309,'Fiction')
insert into Category values(309,'Horror')
insert into Category values(310,'Historical Fiction')
insert into Category values(310,'Historical')
truncate table Category


CREATE TABLE Author (
      AuthorID        int         PRIMARY KEY,
      AuthorName      varchar(100)  not null,
      Country         varchar(50)  not null,
      BirthDate       DATE,
      );
select * from Author

insert into Author values(401,'Chris','INDIA','1987-03-21')
insert into Author values(402,'Alan Moore','AUSTRALIA','1986-08-11')
insert into Author values(403,'Mike Tyson','NEW YORK','1965-06-02')
insert into Author values(404,'F. Scott Fitzgerald','JAPAN','1879-01-14')
insert into Author values(405,'Paul Kalanithi','AMERICA','1908-09-15')
insert into Author values(406,'Rabindranath Tagore','INDIA','1861-06-12')
insert into Author values(407,'Salman Rushdie','INDIA','1850-2-08')
insert into Author values(408,'Stephen King','AMERICA','1885-05-21')
insert into Author values(409,'Mark Twain','AMERICA','1770-08-02')
insert into Author values(410,'Leo Tolstoy','RUSSIA','1828-04-24')
insert into Author values(411,'Kazi Nasrul Islam''IRAN','1944-07-24')
drop table Author


CREATE TABLE Staff (
StaffID INT Primary Key,
Staffname varchar(30) not null,
position varchar(30) not null,
email varchar(50) not null,
mobile varchar(10) not null
);
select * from Staff

insert into Staff values(901,'rajesh','librarian','rajesha22@gamil.com',9936472821)
insert into Staff values(902,'mahesh','libraian','mahesh166@gmail.com',9865473821)
insert into Staff values(903,'babu','libraian assistant','babu55@gmail.com',7898654323)
insert into Staff values(904,'raju','labrary clerk','raju785@gmail.com',8786543221)
insert into Staff values(905,'mohammed','library manager','mohammed786@gmail.com',7690765432)
insert into Staff values(906,'basha','senior librarian','basha254@gmail.com',8976546732)
insert into Staff values(907,'sudheer','Library Technician','sudheer54@gmail.com',9976556732)
insert into Staff values(908,'sandeep','Library Manager','sandeep4@gmail.com',9976546732)
insert into Staff values(909,'shaffi','Reference librarian','shaffi123@gmail.com',7976548732)
insert into Staff values(910,'verra','Medical librarian','veera@gmail.com',9976540732)
truncate table staff

CREATE TABLE FinePenalty
(
fine_id           int          Primary Key,
 BorrowerID       int          not null foreign key references Borrower(BorrowerID),
amount            money        not null,
description       varchar(50)  not null,
payment_status    varchar(44)  not null
)
select * from  FinePenalty
insert into FinePenalty values(601,503,10.5,'Late book return','unpaid')
insert into FinePenalty values(602,504,500,'lost book','paid')
insert into FinePenalty values(603,502,15,'Late book return','unpaid')
insert into FinePenalty values(604,507,50,'Damaged book','paid')
insert into FinePenalty values(605,506,700,'lost book','paid')
insert into FinePenalty values(606,505,150,'Damaged book','paid')
insert into FinePenalty values(607,507,110,'Damaged book','unpaid')
insert into FinePenalty values(608,509,100,'lost book','paid')
insert into FinePenalty values(609,508,44,'Late book return','paid')
insert into FinePenalty values(610,510,15,'Late book return','unpaid')
insert into FinePenalty values(611,513,150,'Late book return','unpaid')
insert into FinePenalty values(612,515,500,'Llost book','paid')
insert into FinePenalty values(613,516,44,'Damaged book','unpaid')
insert into FinePenalty values(614,512,100,'Late book return','paid')
insert into FinePenalty values(615,518,300,'lost book','unpaid')
insert into FinePenalty values(616,513,199,'Late book return','unpaid')
insert into FinePenalty values(617,518,244,'Damaged book','paid')
insert into FinePenalty values(618,511,143,'Late book return','unpaid')
insert into FinePenalty values(619,519,22,'Late book return','paid')
insert into FinePenalty values(620,520,444,'lost book','unpaid')

truncate table  FinePenalty


CREATE TABLE Publisher
(
PublisherID int Primary Key,
publishername varchar(50) not null ,
address varchar(40) not null,
contact_number varchar(10) not null,
email varchar(50) not null
)
select * from  Publisher
insert into Publisher values(801,'Penguin Random',' Main Street, Cityville', 989778555,'penguinbooks@gmail.com')
insert into Publisher values(802,'HarperCollins','Maple Avenue, Townsville',564587985,'harperbooks@gmail.com')
insert into Publisher values(803,'Oxford University',' Oak Road, Villageton', 856545123,'oxfordbooks@gmail.com')
insert into Publisher values(804,'Chand Publishing','New Delhi,IN',983652684,'chandbooks@gmail.com')
insert into Publisher values(805,'New Saraswati Publishing House','Chennai',759845231,'sarawatibooks@gmail.com')
insert into Publisher values(806,'Pearson',' London, England, UK',8798765643,'Pearsonbooks24@gmail.com')
insert into Publisher values(807,'RELX',' Gütersloh, Germany',8767543221,'RELX23@gmail.com')
insert into Publisher values(808,'Thomson Reuters','Toronto, Ontario, Canada',9809876754,'Thomsonreuters@gmail.com')
insert into Publisher values(809,' Penguin Random House','New York City, USA',4567890987,' Penguin23gmail.com')
insert into Publisher values(810,'Hachette Livre','Paris, France',7898765632,'HachetteLivre@gmail.com')
CREATE TABLE Bookcopies
(
copyID int Primary Key,
 BookID int         not null foreign key references Book(BookID),
location varchar(50) not null,
availability_status     varchar(50) not null
)
select * from  Bookcopies
insert into Bookcopies values(1,101,'Shelf A-1','Available')
insert into Bookcopies values(2,104,'Shelf A-2','Available')
insert into Bookcopies values(3,103,'Shelf B-2','Borrowed')
insert into Bookcopies values(4,102,'Shelf B-1','Borrowed')
insert into Bookcopies values(5,105,'Shelf C-2','Available')
insert into Bookcopies values(6,106,'Shelf C-2','Available')
insert into Bookcopies values(7,107,'Shelf D-1','Borrowed')
insert into Bookcopies values(8,107,'Shelf E-2','Available')
insert into Bookcopies values(9,109,'Shelf C-3','Available')
insert into Bookcopies values(10,115,'Shelf D-2','Borrowed')
insert into Bookcopies values(11,114,'Shelf B-1','Available')
insert into Bookcopies values(12,113,'Shelf E-2','Available')
insert into Bookcopies values(13,113,'Shelf C-1','Borrowed')
insert into Bookcopies values(14,119,'Shelf A-2','Available')
insert into Bookcopies values(15,106,'Shelf B-1','Borrowed')
insert into Bookcopies values(16,117,'Shelf E-1','Available')
insert into Bookcopies values(17,117,'Shelf A-3','Available')
insert into Bookcopies values(18,109,'Shelf C-3','Borrowed')
insert into Bookcopies values(19,108,'Shelf B-3','Borrowed')
insert into Bookcopies values(20,118,'Shelf D-3','Available')

CREATE TABLE Reservations
(
ReservationID int          Primary Key,
BookID    int          not null foreign key references Book(BookID),
UserID int          not null foreign key references Borrower(BorrowerID),
reservation_date        date not null,
status    varchar(50) not null
)                                                                                                                                                        
select * from  Reservations

insert into Reservations values(1001,102,502,'2023-03-21','Active')
insert into Reservations values(1002,104,505,'2023-03-27','Active')
insert into Reservations values(1003,101,503,'2023-03-30','Cancelled')
insert into Reservations values(1004,105,501,'2023-04-05','Active')
insert into Reservations values(1005,103,504,'2023-04-21','Cancelled')
insert into Reservations values(1006,106,503,'2023-04-15','Cancelled')
insert into Reservations values(1007,107,507,'2023-04-11','Active')
insert into Reservations values(1008,108,506,'2023-04-05','Cancelled')
insert into Reservations values(1009,109,508,'2023-04-30','Active')
insert into Reservations values(1010,110,509,'2023-04-24','Active')
insert into Reservations values(1011,110,510,'2023-05-02','Active')
insert into Reservations values(1012,113,518,'2023-05-20','Cancelled')
insert into Reservations values(1013,113,514,'2023-05-04','Cancelled')
insert into Reservations values(1014,114,514,'2023-05-16','Active')
insert into Reservations values(1015,115,511,'2023-05-19','Active')
insert into Reservations values(1016,114,516,'2023-05-21','Active')
insert into Reservations values(1017,119,515,'2023-05-24','Active')
insert into Reservations values(1018,115,520,'2023-06-01','Active')
insert into Reservations values(1019,119,519,'2023-06-15','Cancelled')
insert into Reservations values(1020,118,520,'2023-06-24','Active')

truncate table Reservations
CREATE TABLE Languages (
    LanguageID         INT          PRIMARY KEY,
BookID          int           not null foreign key references Book(BookID),
    LanguageName    VARCHAR(50)       NOT NULL
);  
select * from  Languages

insert into Languages  values(1101,101,'ENGLISH')
insert into Languages  values(1102,102,'SPANISH')
insert into Languages  values(1103,104,'FRENCH')
insert into Languages  values(1104,107,'RUSSIAN')
insert into Languages  values(1105,109,'ARABIC')
truncate table Languages

CREATE TABLE BookReview (
    ReviewID INT PRIMARY KEY,
    BookID INT,
	BorrowerID INT,
    ReviewText VARCHAR(500),
    ReviewDate DATE,

);
select *from BookReview

insert into BookReview values(1201,102,502, 'I really enjoyed this book. Highly recommended!', '2023-06-15')
insert into BookReview values(1202,104,505, 'The characters were well-developed, but the plot was predictable.', '2023-06-10')
insert into BookReview values(1203,105,503, 'This book had a slow start, but it picked up towards the end.', '2023-06-12')
insert into BookReview values(1204,111,518, 'The author did an excellent job of creating a suspenseful atmosphere.', '2023-06-09')
insert into BookReview values(1205,109,514, 'I found the writing style to be captivating and lyrical.', '2023-06-14')
insert into BookReview values(1206,106,508, 'The book was a bit too long for my liking, but the story was compelling.', '2023-06-13')
insert into BookReview values(1207,118,505, 'I could not put this book down. Gripping from start to finish!', '2023-06-11')
insert into BookReview values(1208,114,515, 'The plot twists kept me on the edge of my seat. Highly recommend!', '2023-06-17')
insert into BookReview values(1209,120,520, 'The characters felt shallow and lacked depth.', '2023-06-08')
insert into BookReview values(1210,106,510,  'I was disappointed by the ending. It felt rushed and unresolved.', '2023-06-16')
truncate table BookReview



                           ----------------//////////////QUERIES\\\\\\\\\\\\\\\------------------

--1.Retrieve books with available copies greater than or equal to 500:

SELECT * FROM book WHERE AvailableCopies >=500;

--2.Retrieve the book title and author name for all books

SELECT Book.Title, Author.AuthorName
FROM Book
JOIN Author ON Book.Author = Author.AuthorID;

--3.Retrieve all books borrowed by a specific borrower

SELECT Book.*
FROM Book
JOIN Transactions ON Book.BookID = Transactions.BookID
WHERE Transactions.UserID = 502;

--4.Retrieve the books published by a specific author

SELECT Book.*
FROM Book
JOIN Author ON Book.Author = Author.AuthorID
WHERE Author.AuthorName = 'Chris';


--5.Retrieve the borrowers who have unpaid fine penalties:

SELECT Borrower.*
FROM Borrower
JOIN FinePenalty ON Borrower.BorrowerID = FinePenalty.BorrowerID
WHERE FinePenalty.payment_status = 'unpaid';

--6.Retrieve the first name, last name, and email of borrowers who have their reservation status as cancelled.

SELECT Borrower.FirstName, Borrower.LastName, Borrower.Email
FROM Borrower
INNER JOIN Reservations ON Borrower.BorrowerID = Reservations.UserID
WHERE Reservations.status = 'Cancelled';

--7.Retrieve the first name, last name, and email of borrowers who have not returned their borrowed books.

SELECT Borrower.FirstName, Borrower.LastName, Borrower.Email
FROM Borrower
INNER JOIN Transactions ON Borrower.BorrowerID = Transactions.UserID
WHERE Transactions.Status = 'Not Returned';


--8.Retrieve the title and author of books in the "Fiction" category.

SELECT Book.Title, Author.AuthorName
FROM Book
INNER JOIN Author ON Book.Author = Author.AuthorID
INNER JOIN Category ON Book.Category = Category.CategoryID
WHERE Category.CategoryName = 'Fiction';


--9.Retrieve the first name, last name, and amount of each borrower with a fine penalty.

SELECT Borrower.FirstName, Borrower.LastName, FinePenalty.amount
FROM Borrower
INNER JOIN FinePenalty ON Borrower.BorrowerID = FinePenalty.BorrowerID;


--10.Retrieve the average fine amount for each category:

SELECT Category.CategoryName, AVG(FinePenalty.amount) AS AverageFine
FROM Category
JOIN Book ON Category.CategoryID = Book.Category
JOIN Transactions ON Book.BookID = Transactions.BookID
JOIN FinePenalty ON Transactions.UserID = FinePenalty.BorrowerID
GROUP BY Category.CategoryName;

--11.Retrieve the books that have not been reserved.

SELECT B.Title
FROM Book B
LEFT JOIN Reservations R ON B.BookID = R.BookID
WHERE R.ReservationID IS NULL;

--12.Retrieve the borrowers who have made reservations on a specific date.

SELECT DISTINCT Br.BorrowerID, Br.FirstName, Br.LastName
FROM Borrower Br
JOIN Reservations R ON Br.BorrowerID = R.UserID
WHERE R.reservation_date = '2023-04-05';

--13.Retrieve the number of reservations made for each book.

SELECT B.Title, COUNT(*) AS NumberOfReservations
FROM Book B
LEFT JOIN Reservations R ON B.BookID = R.BookID
GROUP BY B.Title;

--14.Retrieve the books with the highest fine amount.

SELECT B.Title, MAX(FP.amount) AS HighestFineAmount
FROM Book B
JOIN Transactions T ON B.BookID = T.BookID
JOIN FinePenalty FP ON T.UserID = FP.BorrowerID
GROUP BY B.Title;

--15.Retrieve the borrowers who have not made any fine payments.

SELECT Br.BorrowerID, Br.FirstName, Br.LastName
FROM Borrower Br
LEFT JOIN FinePenalty FP ON Br.BorrowerID = FP.BorrowerID
WHERE FP.fine_id IS NULL;

--16.Retrieve the details of books that are available and located on a specific shelf:

SELECT b.Title, bc.location
FROM Book b
JOIN Bookcopies bc ON b.BookID = bc.BookID
WHERE bc.availability_status = 'Available' AND bc.location = 'Shelf A-1';

--17.Retrieve the books written by authors from a specific country:
SELECT b.Title, a.AuthorName
FROM Book b
JOIN Author a ON b.Author = a.AuthorID
WHERE a.Country = 'INDIA';

--18.Retrieve the borrowers who have never borrowed a book:

SELECT bo.FirstName, bo.LastName
FROM Borrower bo
LEFT JOIN Transactions t ON bo.BorrowerID = t.UserID
WHERE t.UserID IS NULL;

--19.Retrieve the details of books with titles starting with 'The':
SELECT Title
FROM Book
WHERE Title LIKE 'The%';

--20.Retrieve the details of books borrowed and returned within a specific date range:

SELECT b.Title, t.TransactionDate, t.ReturnDate
FROM Book b
JOIN Transactions t ON b.BookID = t.BookID
WHERE t.TransactionDate BETWEEN '2023-01-01' AND '2023-06-01'
  AND t.ReturnDate BETWEEN '2023-01-01' AND '2023-06-01';

--21.Retrive all books with their titles, authors, and categories

SELECT Book.Title, Author.AuthorName, Category.CategoryName
FROM Book
JOIN Author ON Book.Author = Author.AuthorID
JOIN Category ON Book.Category = Category.CategoryID;

--22.Retrive all books with their authors and the number of times each book has been borrowed

SELECT Book.Title, Author.AuthorName, COUNT(*) AS BorrowCount
FROM Book
JOIN Transactions ON Book.BookID = Transactions.BookID
JOIN Author ON Book.Author = Author.AuthorID
GROUP BY Book.Title, Author.AuthorName;

--23.List the authors who have written books in multiple categories

SELECT Author.AuthorName
FROM Author
JOIN Book ON Author.AuthorID = Book.Author
GROUP BY Author.AuthorName
HAVING COUNT(DISTINCT Book.Category) > 1;

--24.List the staff members who have not performed any transactions:

SELECT Staff.Staffname
FROM Staff
LEFT JOIN Transactions ON Staff.StaffID = Transactions.UserID
WHERE Transactions.TransactionID IS NULL;

--25.Retrieve the books that are available in a specific location:

SELECT Book.Title, Bookcopies.location
FROM Book
JOIN Bookcopies ON Book.BookID = Bookcopies.BookID
WHERE Bookcopies.location = 'Shelf B-1';

--26.Find the total number of transactions for each staff member:
SELECT Staff.Staffname, COUNT(Transactions.TransactionID) AS TotalTransactions
FROM Staff
LEFT JOIN Transactions ON Staff.StaffID = Transactions.UserID
GROUP BY Staff.Staffname;

--27.List the borrowers who have paid all their fines:

SELECT Borrower.FirstName, Borrower.LastName
FROM Borrower
LEFT JOIN FinePenalty ON Borrower.BorrowerID = FinePenalty.BorrowerID
GROUP BY Borrower.FirstName, Borrower.LastName
HAVING COUNT(FinePenalty.fine_id) = 0;

--28.Retrieve the number of books published in each category.

SELECT C.CategoryName, COUNT(*) AS NumberOfBooks
FROM Category C
JOIN Book B ON C.CategoryID = B.Category
GROUP BY C.CategoryName;

--29.Retrieve all books with multiple authors.

SELECT Book.Title, COUNT(*) AS NumAuthors
FROM Book
JOIN Author ON Book.Author = Author.AuthorID
GROUP BY Book.Title
HAVING COUNT(*) > 1;

--29.Retrieve the borrowers who have reserved a book and their reservation dates.

SELECT Borrower.FirstName, Borrower.LastName, Reservations.reservation_date
FROM Borrower
JOIN Reservations ON Borrower.BorrowerID = Reservations.UserID;

--30.Retrieve the books with their corresponding languages.

SELECT Book.Title, Languages.LanguageName
FROM Book
JOIN Languages ON Book.BookID = Languages.BookID;

--31.Retrieve the books borrowed by borrowers whose names start with "A"

SELECT Book.BookID, Book.Title
FROM Book
JOIN Transactions ON Book.BookID = Transactions.BookID
JOIN Borrower ON Transactions.UserID = Borrower.BorrowerID
WHERE Borrower.FirstName LIKE 'A%';

--32.Retrieve the staff members who have not borrowed any books:

SELECT s.staffid,s.staffname,s.position,s.email,s.mobile
FROM Staff s
WHERE NOT EXISTS (
    SELECT 1
    FROM Transactions t
    WHERE t.UserID = s.StaffID
);
--33.Retrieve the reservations with the earliest reservation date:

SELECT r. *
FROM Reservations r
WHERE reservation_date = (
    SELECT MIN(reservation_date)
    FROM Reservations
);

--34.Retrieve the reservations made by users with a specific email domain :

SELECT r.*
FROM Reservations r
INNER JOIN Borrower u ON r.UserID = u.BorrowerID
WHERE u.Email LIKE 'sashiambati62@gmail.com';

--35.Retrieve the book copies that are available and have not been reserved:
SELECT bc.*
FROM Bookcopies bc
LEFT JOIN Reservations r ON bc.BookID = r.BookID
WHERE bc.availability_status = 'Available'
AND r.ReservationID IS NULL;

--36.Retrieve the details of all languages along with the number of books in each language:

SELECT l.LanguageID, l.LanguageName, COUNT(b.BookID) AS BookCount
FROM Languages l
LEFT JOIN Book b ON l.BookID = b.BookID
GROUP BY l.LanguageID, l.LanguageName;

--37.Retrieve the languages with the highest number of books:
SELECT l.LanguageID, l.LanguageName
FROM Languages l
INNER JOIN Book b ON l.BookID = b.BookID
GROUP BY l.LanguageID, l.LanguageName
HAVING COUNT(b.BookID) = (
    SELECT MAX(BookCount)
    FROM (
        SELECT COUNT(b2.BookID) AS BookCount
        FROM Book b2
        GROUP BY b2.BookID
    ) AS SubQuery
);

--38.Retrieve the book copies that have been borrowed and returned within a specific date range:
SELECT bc.*
FROM Bookcopies bc
INNER JOIN Transactions t ON bc.BookID = t.BookID
WHERE t.Status = 'Returned'
AND t.TransactionDate BETWEEN '2023-01-01' AND '2023-06-01';

 --39.Retrieve the reservations with the highest reservation ID:

SELECT *
FROM Reservations
WHERE ReservationID = (
    SELECT MAX(ReservationID)
    FROM Reservations
);

--40.Retrieve the books that have been borrowed the most times.
SELECT Book.BookID, Book.Title
FROM Book
JOIN Transactions ON Book.BookID = Transactions.BookID
GROUP BY Book.BookID, Book.Title
HAVING COUNT(Transactions.TransactionID) = (SELECT MAX(TransactionCount) FROM (SELECT COUNT(TransactionID) AS TransactionCount FROM Transactions GROUP BY BookID) AS T);

--41.Retrieve the books that have been reviewed more than 1 time:

SELECT b.BookID, b.Title
FROM Book b
JOIN (
    SELECT BookID, COUNT(*) AS ReviewCount
    FROM BookReview
    GROUP BY BookID
    HAVING COUNT(*) > 1
) AS R ON b.BookID = R.BookID;

--42.Retrieve the member who has written the most book reviews:

SELECT bw.BorrowerID, CONCAT(bw.FirstName, ' ', bw.LastName) AS ReviewerName, COUNT(*) AS ReviewCount
FROM Borrower bw
JOIN BookReview br ON bw.BorrowerID = br.BorrowerID
GROUP BY bw.BorrowerID, FirstName,LastName
HAVING COUNT(*) = (
    SELECT MAX(ReviewCount)
    FROM (
        SELECT bw.BorrowerID, COUNT(*) AS ReviewCount
        FROM Borrower bw
        JOIN BookReview br ON bw.BorrowerID = br.BorrowerID
        GROUP BY bw.BorrowerID
    ) AS T
);

--43.Retrieve the books with the most recent reviews:

SELECT b.BookID, b.Title, br.ReviewText, br.ReviewDate
FROM Book b
JOIN BookReview br ON b.BookID = br.BookID
WHERE br.ReviewDate = (
    SELECT MAX(ReviewDate)
    FROM BookReview
);

--44.Retrieve the books that have at least one review and are currently available:

SELECT b.BookID, b.Title
FROM Book b
JOIN BookReview br ON b.BookID = br.BookID
JOIN BookCopies bc ON b.BookID = bc.BookID
WHERE bc.availability_status = 'Available';

--45.Retrieve book reviews with their corresponding book titles:

SELECT br.ReviewID, br.ReviewText, br.ReviewDate, bo.FirstName, bo.LastName
FROM BookReview br
JOIN Borrower bo ON br.BorrowerID = bo.BorrowerID;

--46.Retrieve books with no reviews:

SELECT b.BookID, b.Title
FROM Book b
LEFT JOIN BookReview br ON b.BookID = br.BookID
WHERE br.ReviewID IS NULL;

--47.Retrieve book reviews written by a specific borrower:

SELECT br.ReviewID, br.ReviewText, br.ReviewDate, bo.FirstName, bo.LastName
FROM BookReview br
JOIN Borrower bo ON br.BorrowerID = bo.BorrowerID
WHERE bo.FirstName = 'mahesh' AND bo.LastName = 'konda';

--48.Retrieve book reviews for books in a specific category:

SELECT br.ReviewID, br.ReviewText, br.ReviewDate, b.Title, c.CategoryName
FROM BookReview br
JOIN Book b ON br.BookID = b.BookID
JOIN Category c ON b.Category = c.CategoryID
WHERE c.CategoryName = 'Mystery';

--49.Retrieve the total number of reviews for each book:

SELECT b.BookID, b.Title, COUNT(br.ReviewID) AS ReviewCount
FROM Book b
LEFT JOIN BookReview br ON b.BookID = br.BookID
GROUP BY b.BookID, b.Title;

--50.Retrieve the borrowers information and the title of the book they most recently borrowed:

SELECT bo.FirstName, bo.LastName, b.Title
FROM Borrower bo
JOIN (
    SELECT t.UserID, t.BookID
    FROM Transactions t
    WHERE t.TransactionDate = (
        SELECT MAX(TransactionDate)
        FROM Transactions
        WHERE UserID = t.UserID
    )
) AS latest ON bo.BorrowerID = latest.UserID
JOIN Book b ON latest.BookID = b.BookID;
1
/*
OUTPUT

FirstName     	LastName	Title

1.RAFFIQ	        mohammed	Pride and Prejudice
2.uppesh	        kumar	    Far from the Madding Crowd 
3.kiran	        sai	        The Lord of the Rings
4.abi	            kumar	    The Moon and Sixpence 
5.sudheer	        ediga	    Geetanjal 
6.ravi	        kumar	    Ancient Mariner
7.raju	        boya	    The Moon and Sixpence 
8.mohammed	    qureshi  	Ben Hur 
9.asif			syed	    The Lord of the Rings
10.basha			syed		The Lord of the Rings
11.ramya			Ambati		The Scarlet Letter
12.vishnu			boya		Pride and Prejudice
13.Nani			uppala		Brave New World
14.Nithin			Ambati		When Breath Becomes Air
15.Shaffi			Shaik		The Great Gatsby
16.Sashi			Ambati		X-Men: God Loves
17.Aadhya			Sree		V for Vendetta
18.Robin			Steve		Mike Tyson : Undisputed Truth
*/









































































