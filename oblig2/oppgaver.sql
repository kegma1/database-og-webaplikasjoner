#oppgave 1
select o.OrderNR, o.LeveringsDato, o.BestillingsDato, m.MåltidNavn, a.AvdelingsNavn
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

#oppgave 5

#oppgave 6

