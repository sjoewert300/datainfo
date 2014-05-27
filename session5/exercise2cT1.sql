/* Om dirty reads van T1 te voorkomen, moet T1 isolation level READ COMMITTED meekrijgen */

BEGIN READ COMMITTED;
SELECT titel FROM Boek WHERE isbn = '0136067018';
SELECT titel FROM Boek WHERE isbn = '0321228383';
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018';
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383';
COMMIT;