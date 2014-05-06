INSERT INTO F x, y, violation, motivation VALUES ("E","D",TRUE,"Met deze relatie kan je niet alle andere waarden bedenken, is geen superkey");
INSERT INTO F x, y, violation, motivation VALUES ("D","A",TRUE,"Met deze relatie kan je niet alle andere waarden bedenken, is geen superkey, net als hierboven");
INSERT INTO F x, y, violation, motivation VALUES ("ABC","EF", FALSE,"Met deze relatie en met E -> D kan men alle waarden vinden");

