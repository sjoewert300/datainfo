SELECT name FROM Person p
WHERE EXISTS (
	SELECT * FROM Writes w
	WHERE w.pid = p.pid
	AND w.mid NOT IN (
		SELECT d.mid FROM Directs d
		)
	);