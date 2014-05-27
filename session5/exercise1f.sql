CREATE TABLE Boek (
	isbn varchar(13) PRIMARY KEY,
	titel varchar(255),
	auteur varchar(255)
);

CREATE TABLE Exemplaar (
	isbn varchar(13),
	volgnummer int PRIMARY KEY,
	gewicht int,
	kast varchar (5)
);

CREATE OR REPLACE FUNCTION update_table() RETURNS TRIGGER
AS $$ BEGIN
	DELETE FROM Exemplaar E WHERE E.isbn=OLD.isbn;
	RETURN null;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER voorwaarde4 AFTER DELETE ON Boek FOR EACH ROW EXECUTE PROCEDURE update_table();

INSERT INTO Boek VALUES ('012','De dood','Mark');

INSERT INTO Exemplaar VALUES ('012','1','2000','B');

UPDATE Boek SET isbn='020' WHERE isbn='012';

DELETE FROM Boek WHERE isbn='020';