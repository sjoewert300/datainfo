/* Om dirty reads van T1 te voorkomen, moet T1 isolation level READ COMMITTED meekrijgen */

BEGIN;
SELECT titel FROM Boek WHERE isbn = ' 0136067018';
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';
COMMIT;