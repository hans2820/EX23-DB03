CREATE TABLE PET_OWNER (
	OwnerId			Int				NOT NULL,
	OwnerLastName	Char(64)		NOT NULL,
	OwnerFirstName	Char(64)		NOT NULL,
	OwnerPhone		Char(10)		NOT NULL,
	OwnerEmail		VarChar(160)	NOT NULL,
	CONSTRAINT		PET_OWNER_PK	PRIMARY KEY(OwnerId)	
);


CREATE TABLE PET (
	PetId			Int				NOT NULL,
	PetName			Char(64)		NOT NULL,
	PetType			Char(32)		NOT NULL,
	PetBreed		Char(32)		NOT NULL,
	PetDOB			VarChar(8)		NOT NULL,
	PetWeight		Float			NOT NULL,
	OwnerId			int				NOT NULL,
	CONSTRAINT		PET_PK			PRIMARY KEY(PetId),
	CONSTRAINT		OWNER_ID_FK		FOREIGN KEY(OwnerId)
						REFERENCES	PET_OWNER(OwnerId)

);