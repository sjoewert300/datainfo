CREATE TABLE Bestelling (
	isbn varchar(13) PRIMARY KEY,
	aantal int
);

CREATE TRIGGER newauthor AFTER INSERT ON Boek WHERE NOT EXISTS(SELECT * FROM OLD WHERE auteur = new.auteur)
BEGIN
	INSERT INTO Bestelling VALUES (new.isbn,'1');
END;
