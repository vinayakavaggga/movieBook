create database cinema

create table Movie
(
MovieID int identity(100, 1) primary key, 
MovieName varchar(30),
Casthero varchar(40),
Castheroine varchar(40),
Castothers1 varchar(40),
Castothers2 varchar(40),
Director varchar(40),
Producer varchar(40),
Musician varchar(40),
genre varchar(40),
Catagory varchar(40),
Movielanguage varchar(40),
TheaterName varchar(40),
MovieImage varchar(40),
MovieDate date,
MovieDuration varchar(20)
)

create table Booking
(
BookingId int identity(1000, 10) primary key,
MovieId int foreign key references Movie(MovieID) on delete cascade on update cascade,
UserName varchar(20),
MovieName varchar(30),
MovieDate date,
SeatNo varchar(30),
NoOfSeats int,
Totalprice int,
)

Create Table Usertable(
UserID int primary key identity(200,1),
UserName varchar(20), 
Userpassword varchar(30),
EmailID varchar(30),
Age int,
gender bit,
PhoneNumber varchar(10), 
);

create table feedback(
feedbackid int identity(300,1) primary key,
username varchar(20),
mailid  varchar(20),
msg    varchar(20),
)

create table booknowviewmodel
(
MovieName varchar(30),
MovieDate date,
SeatNo varchar(30),
Totalprice int,
MovieId int foreign key references Movie(MovieID) on delete cascade on update cascade,

)

create table contactus(
email varchar(30) primary key,
username varchar(30),
phoneno varchar(20),
subjects varchar(30),
message varchar(200),
)

select * from usertable
delete from movie where MovieID = 106
