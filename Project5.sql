USE master;
GO

CREATE DATABASE Election;

USE Election;
GO

CREATE Table Contact(

	id int primary key identity(1,1),

	name nvarchar(MAX),
	email nvarchar(MAX),
	subject nvarchar(MAX),
	message nvarchar(MAX),

	date date,
	time time(3),

	adminName nvarchar(MAX),
	adminResponse nvarchar(MAX),
	rsponseDate date,
	rsponseTime time(3),

	status nvarchar(MAX)
);


CREATE TABLE Admin(

	id int primary key identity(1,1),
	name nvarchar(MAX),
	email nvarchar(MAX),
	password nvarchar(MAX)
);

CREATE TABLE Date(

	id int primary key identity(1,1),

	startDate date,
	endDate date,

	startTime time(3),
	endTime time(3)
);

CREATE TABLE Ad(

	id int primary key identity(1,1),

	name nvarchar(MAX),

	areaName nvarchar(MAX),
	listName nvarchar(MAX),

	partyName nvarchar(MAX),

	campaignSlagan nvarchar(MAX),
	description nvarchar(MAX),

	image nvarchar(MAX),

	status nvarchar(MAX)
);





CREATE TABLE Debates (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,

    electionArea NVARCHAR(MAX),

	firstCandidateName NVARCHAR(MAX),
	firstCandidateID NVARCHAR(MAX),
	firstCandidateList NVARCHAR(MAX),


	secondCandidateName NVARCHAR(MAX),
	secondCandidateID NVARCHAR(MAX),
	secondCandidateList NVARCHAR(MAX),

	debateSubject NVARCHAR(MAX),

	debateDate date,
	debateTime time(3), 

	zoomLink NVARCHAR(MAX),

    status NVARCHAR(MAX)
);


CREATE TABLE ElectionAreas(

    id BIGINT IDENTITY(1,1) PRIMARY KEY,

	areaName NVARCHAR(MAX),
	areaImage NVARCHAR(MAX)
);



CREATE TABLE USERS(
    id int IDENTITY(1,1) PRIMARY KEY,

	nastionalID NVARCHAR(MAX),
	name nvarchar(MAX),
	email NVARCHAR(MAX),
	password NVARCHAR(MAX),

	gender NVARCHAR(MAX),
	religine NVARCHAR(MAX),
	birthday DATE,

	placeOfResidence NVARCHAR(MAX),

	electionArea NVARCHAR(MAX),
	elctionLocation NVARCHAR(MAX),

	localVote int,
	partyVote int,
	whiteLocalVote int,
	whitePartyVote int
);


CREATE TABLE PartyList(

    id int IDENTITY(1,1) PRIMARY KEY,

	partyName NVARCHAR(MAX),
	partyImage NVARCHAR(MAX),

	counter int,

	status NVARCHAR(MAX)
);


CREATE TABLE PartyCandidates(

    id BIGINT IDENTITY(1,1) PRIMARY KEY,

	partyListID int,

	name NVARCHAR(MAX),
	email NVARCHAR(MAX),

	typeOfChair NVARCHAR(MAX),

	religion  NVARCHAR(MAX),
	gender NVARCHAR(MAX),
	birthday NVARCHAR(MAX),
	
	candidateImage NVARCHAR(MAX),

	status NVARCHAR(MAX),

	FOREIGN KEY (partyListID) REFERENCES PartyList(id)
);


CREATE TABLE LocalList (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,

    listName NVARCHAR(MAX),
    electionArea NVARCHAR(MAX),

    counter int,

    status varchar(50) 

);

CREATE TABLE LocalCandidates (

    id BIGINT IDENTITY(1,1) PRIMARY KEY,

    candidateName NVARCHAR(MAX),
	nastionalID NVARCHAR(MAX),

	email NVARCHAR(MAX),

    electionArea NVARCHAR(MAX),


    gender NVARCHAR(MAX),
    birth_day date,
    religion NVARCHAR(MAX),

    typeOfChair NVARCHAR(MAX),

    counter int,

    image NVARCHAR(MAX),

	listName NVARCHAR(MAX),
    listKey BIGINT,
    FOREIGN KEY (listKey) REFERENCES LocalList(id)
);