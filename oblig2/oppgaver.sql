#oppgave 1
select o.OrderNR, o.LeveringsDato, o.BestillingsDato, m.MåltidNavn, a.AvdelingsNavn, m.Pris
from måltidsordrer as o 
inner join måltider as m on o.Måltid = m.MåltidNR
inner join avdelinger as a on o.Mottaker = a.AvdelingNR
where status = "ikke behandlet";
#oppgave 2
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('2', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('2', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('2', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('3', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('3', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('3', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('3', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('3', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('4', 'ikke behandlet', '2', '2023-03-04');
INSERT INTO `stud_v23_kma150`.`måltidsordrer` (`Måltid`, `Status`, `Mottaker`, `LeveringsDato`) VALUES ('4', 'ikke behandlet', '2', '2023-03-04');
#oppgave 3
select * from basismatvarer where Matvare in 
(select basismatvarer_Matvare from basismatvarer_has_måltider where måltider_MåltidNR = 
(select MåltidNR from måltider where MåltidNavn = "Spagetti carbonara"));
#oppgave 4
SELECT a.AvdelingsNavn, m.MåltidNavn, sum(m.Pris) FROM stud_v23_kma150.måltidsordrer as o 
inner join måltider as m on o.Måltid=m.MåltidNR
inner join avdelinger as a on o.Mottaker=a.AvdelingNR
where Status = "effektuert" and (o.LeveringsDato >= "2022.07.01" and o.LeveringsDato <= "2022.12.31")
group by o.Måltid, o.Mottaker;
#oppgave 5
SELECT a.AvdelingsNavn, m.MåltidNavn, sum(m.Pris) FROM stud_v23_kma150.måltidsordrer as o 
inner join måltider as m on o.Måltid=m.MåltidNR
inner join avdelinger as a on o.Mottaker=a.AvdelingNR
where Status = "effektuert" and year(o.LeveringsDato) = year(curdate())
group by o.Måltid, o.Mottaker;
#oppgave 6
SELECT a.AvdelingsNavn, SUM(i.Mengde) AS Mengde
FROM måltidsordrer as o
JOIN måltider as m ON o.Måltid = m.MåltidNR
JOIN basismatvarer_has_måltider as i ON m.MåltidNR = i.måltider_MåltidNR
JOIN basismatvarer as b ON i.basismatvarer_Matvare = b.Matvare
inner join avdelinger as a on o.Mottaker = a.AvdelingNR
WHERE b.Matvare = "Lutefisk"
AND o.LeveringsDato BETWEEN '2022-07-02' and '2023-11-13'
GROUP BY o.Mottaker;

