/*1*/
Select * From Hotel;
/*2*/
Select * from Hotel WhERE Address like '%Roskilde%';
/*3*/
Select Name, Address from Hotel WhERE Address like '%Roskilde%';
/*4*/
Select Name, Address from Hotel WhERE Address like '%Roskilde%' ORDER BY Name;
/*5*/
Select * from Room WhERE Price < 200 AND Types = 'D';
/*6*/
Select * from Room WhERE Price < 400 AND Types = 'D' OR Types = 'F';
/*7*/
Select * from Room WhERE Price < 400 AND Types = 'D' OR Types = 'F' ORDER BY Price ASC;
/*8*/
Select * from Guest where name like 'G%';
/*9*/
Select Count (Hotel_No) From Hotel;
/*10*/
Select Count (Hotel_No) From Hotel WhERE Address like '%Roskilde%';
/*11*/
Select AVG (Price) From Room;
/*12*/
Select AVG (Price) From Room WHERE Types = 'S';
/*13*/
Select AVG (Price) From Room WHERE Types = 'D';
/*14*/
Select AVG (Price) From Room WHERE Hotel_No = 7;
/*15*/
Select SUM (Price) From Room;
/*16*/
Select Count(Distinct Booking.Guest_No) From Booking WHERE Date_From >= '2011-03-01' AND Date_From <= '2011-04-01' OR (Date_To > '2011-03-01' AND Date_To < '2011-04-01');
/*17*/
Select Count(Guest_No) From Booking WHERE Booking.Date_From = '02-02-2011' AND Date_To = '03-02-2011'
/*18*/
Select Count(Guest_No) From Booking WHERE Booking.Date_From = '03-02-2011' AND Date_To = '06-04-2011'
/*19*/
Select Price, Types From ROOM WHERE Hotel_No = 7;
/*20*/
Select * FROM Guest INNER JOIN Booking ON Booking.Guest_No = Guest.Guest_No WHERE Hotel_No = 7;
/* Sprænger 21 over */

/*22*/
Select * From Room
 Inner Join Booking ON Room.Room_No = Booking.Room_No 
 WHERE Date_From <= '2011-02-04' AND Date_To >= '2011-02-04' AND Booking.Hotel_No = 6;
/*test på 22*/
 Select * From Booking WHERE '2011-02-04'BETWEEN Booking.Date_From AND Booking.Date_To AND Booking.Hotel_No = 6;
--SELECT SUM(Room.Price) AS TotalIncome From Room WHERE concat(Room.Room_No. Room.Hotel_No) IN (Select Concat (Booking.Room_No, Booking,Hotel_No) From Booking INNER JOIN Hotel On Hotel.Hotel_No = Booking.Hotel_No WHERE Hotel.Name LIKE 'Prindsen' AND GETDATE() Between '04-02-2011' AND '04-03-2011');

/*23*/
Select * FROM Room r WHERE r.Hotel_No = (SElect Hotel_No FROM Hotel WHERE Name = 'Prindsen') and r.Room_No NOT IN (Select Room_No From Booking b WHERE GETDATE() Between Date_from AND Date_To);

/*24*/
Select Sum(price) From Room r WHERE r.Hotel_No = (Select Hotel_No From Hotel WHERE Name = 'Prindsen') AND r.Room_No NOT IN ( SELECT Room_No FROM Booking b WHERE GETDATE() BETWEEN Date_From and DATE_To);

/*25*/
