INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Muskat', '100', '6', '2094', '506', '36', '29', '21', '6', '0');
INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Hvetemel', '100', '14', '1392', '330', '2', '58', '13', '13', '0');
INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Erter', '100', '83', '267', '64', '1', '7', '5', '4', '0');
INSERT INTO `stud_v23_kma150`.`basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES ('Potetmel', '100', '15', '1431', '337', '0', '84', '0', '0', '0');

INSERT INTO `stud_v23_kma150`.`måltider` (`MåltidNavn`, `Leveringsklokkeslett`) VALUES ('Kjøttkater', '15:00:00');

INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Kjøttdeig', '3', '500');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Salt', '3', '2');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Pepper', '3', '1');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Muskat', '3', '1');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Potetmel', '3', '3');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Vann', '3', '2');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Smør', '3', '2');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Hvetemel', '3', '3');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Erter', '3', '500');
INSERT INTO `stud_v23_kma150`.`basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES ('Potet', '3', '600');