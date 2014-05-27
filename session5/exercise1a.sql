CREATE TABLE Boek (
	isbn varchar(13) PRIMARY KEY,
	titel varchar(255),
	auteur varchar(255)
);

CREATE TABLE Exemplaar (
	isbn varchar(13),
	volgnummer int PRIMARY KEY,
	gewicht int,
	kast varchar (5),
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE
);