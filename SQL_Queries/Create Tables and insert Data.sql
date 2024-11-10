USE [C:\USERS\PETER\ONEDRIVE\DOCUMENTS\1. BC\2ND YEAR\12 PRG2\CLASSREPO\STPRACTICE\PETSHOPAPP\PETSHOPDB.MDF]
GO

CREATE TABLE tblOwner (
	OwnerID INT IDENTITY (1,1) PRIMARY KEY,
	OwnerName NVARCHAR(50) NOT NULL,
	OwnerSurname NVARCHAR(50) NOT NULL,
	OwnerGender NVARCHAR(50) NOT NULL
)

INSERT INTO tblOwner VALUES
	('John', 'Doe', 'Male'),
	('Susan', 'Doe', 'Female');

USE [C:\USERS\PETER\ONEDRIVE\DOCUMENTS\1. BC\2ND YEAR\12 PRG2\CLASSREPO\STPRACTICE\PETSHOPAPP\PETSHOPDB.MDF]
GO

CREATE TABLE tblPet (
	PetName NVARCHAR(50) NOT NULL,
	PetType NVARCHAR(50) NOT NULL,
	PetAge INT NOT NULL,
	OwnerID INT FOREIGN KEY REFERENCES tblOwner
)

INSERT INTO tblPet VALUES
	('Dawg', 'Cat', 3, 2),
	('Kitty', 'Dog', 12, 1);

USE [C:\USERS\PETER\ONEDRIVE\DOCUMENTS\1. BC\2ND YEAR\12 PRG2\CLASSREPO\STPRACTICE\PETSHOPAPP\PETSHOPDB.MDF]
GO

-- Insert additional owners
INSERT INTO tblOwner (OwnerName, OwnerSurname, OwnerGender) VALUES
    ('Alice', 'Smith', 'Female'),
    ('Bob', 'Johnson', 'Male'),
    ('Charlie', 'Brown', 'Male'),
    ('Diana', 'White', 'Female'),
    ('Evan', 'Black', 'Male'),
    ('Fiona', 'Green', 'Female'),
    ('George', 'Harris', 'Male'),
    ('Hannah', 'Clark', 'Female');

-- Insert additional pets, with some owners having multiple pets
INSERT INTO tblPet (PetName, PetType, PetAge, OwnerID) VALUES
    ('Bella', 'Dog', 5, 3),
    ('Max', 'Cat', 2, 3),
    ('Charlie', 'Bird', 1, 4),
    ('Buddy', 'Dog', 7, 5),
    ('Lucy', 'Fish', 1, 6),
    ('Daisy', 'Rabbit', 4, 7),
    ('Molly', 'Hamster', 2, 8),
    ('Bailey', 'Dog', 6, 9),
    ('Rocky', 'Cat', 3, 10),
    ('Lola', 'Parrot', 8, 4),
    ('Sadie', 'Dog', 3, 2),
    ('Toby', 'Dog', 5, 5),
    ('Ruby', 'Cat', 4, 1),
    ('Coco', 'Rabbit', 2, 6),
    ('Chloe', 'Dog', 9, 7),
    ('Jack', 'Snake', 3, 8),
    ('Maggie', 'Cat', 6, 1),
    ('Sam', 'Turtle', 10, 9),
    ('Leo', 'Dog', 5, 10),
    ('Oscar', 'Fish', 1, 2);
