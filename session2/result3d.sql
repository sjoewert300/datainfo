SELECT name FROM Person p
WHERE EXISTS (
	SELECT * FROM Writes w
	WHERE w.pid = p.pid
	AND NOT EXISTS (
		SELECT * FROM Directs d
		WHERE w.mid = d.mid
		)
	)