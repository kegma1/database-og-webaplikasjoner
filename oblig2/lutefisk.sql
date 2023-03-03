INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Lutefisk', '0', '88', '211', '50', '1', '0', '0', '11', '0');
INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Sennep', '100', '63', '662', '158', '6', '19', '2', '6', '0');

INSERT INTO `stud_v23_kma150`.`måltider` (`MåltidNavn`, `Leveringsklokkeslett`) VALUES ('Lutefisk', '15:00:00');

INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Lutefisk', '4', '2');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Salt', '4', '2');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Potet', '4', '800');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Bacon', '4', '400');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Sennep', '4', '4');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Erter', '4', '400');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Smør', '4', '50');