




CREATE TABLE IF NOT EXISTS `Patient` (
  `Nss_P` INT NOT NULL,
  `Nom_Patient` VARCHAR(45) NOT NULL,
  `Sexe` VARCHAR(45) NOT NULL,
  `Age` INT NOT NULL,
  `Profession` VARCHAR(45) NOT NULL,
  `Date_Deces` DATE NULL,
  PRIMARY KEY (`Nss_P`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `Medecin` (
  `Nss_M` INT NOT NULL,
  `Nom_Medecin` VARCHAR(45) NOT NULL,
  `Sexe` VARCHAR(45) NOT NULL,
  `Age` INT NOT NULL,
  `Adresse` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Nss_M`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Consultation` (
  `Num_Consultation` INT NOT NULL,
  `Statut` VARCHAR(45) NOT NULL,
  `Date_Consultation` DATE NULL,
  `Patient_Nss_P` INT NOT NULL,
  `Medecin_Nss_M` INT NOT NULL,
  PRIMARY KEY (`Num_Consultation`, `Patient_Nss_P`, `Medecin_Nss_M`),
  CONSTRAINT `fk_Consultation_Patient`
    FOREIGN KEY (`Patient_Nss_P`)
    REFERENCES `Patient` (`Nss_P`)
    ON DELETE CASCADE
    ON UPDATE  CASCADE,
  CONSTRAINT `fk_Consultation_Medecin1`
    FOREIGN KEY (`Medecin_Nss_M`)
    REFERENCES `Medecin` (`Nss_M`)
    ON DELETE CASCADE
    ON UPDATE  CASCADE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Classe` (
  `Num_Classe` INT NOT NULL,
  `Categorie` VARCHAR(45) NOT NULL,
  `Taux_Remboursement` DOUBLE NOT NULL,
  PRIMARY KEY (`Num_Classe`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Affection` (
  `Num_Affection` INT NOT NULL,
  `Nom_Affection` VARCHAR(45) NOT NULL,
  `Classe_Num_Classe` INT NOT NULL,
  PRIMARY KEY (`Num_Affection`, `Classe_Num_Classe`),
  CONSTRAINT `fk_Affection_Classe`
    FOREIGN KEY (`Classe_Num_Classe`)
    REFERENCES `Classe` (`Num_Classe`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Liste_Tarif` (
  `Num_Tarif` INT NOT NULL,
  `Nom_Tarif` VARCHAR(45) NOT NULL,
  `Montant_Tarif` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Num_Tarif`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Prescription` (
  `Num_Prescription` INT NOT NULL,
  `Nom_Medicament` VARCHAR(45) NOT NULL,
  `Quantite` INT NOT NULL,
  PRIMARY KEY (`Num_Prescription`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `Acte_Medicale` (
  `Num_Acte` INT NOT NULL,
  `Date_Creation` DATE NOT NULL,
  `Montant` DOUBLE NOT NULL,
  `Consultation_Num_Consultation` INT NOT NULL,
  `Consultation_Patient_Nss_P` INT NOT NULL,
  `Consultation_Medecin_Nss_M` INT NOT NULL,
  `Liste_Tarif_Num_Tarif` INT NOT NULL,
  `Prescription_Num_Prescription` INT NOT NULL,
  PRIMARY KEY (`Num_Acte`, `Consultation_Num_Consultation`, `Consultation_Patient_Nss_P`, `Consultation_Medecin_Nss_M`, `Liste_Tarif_Num_Tarif`, `Prescription_Num_Prescription`),
  CONSTRAINT `fk_Acte_Medicale_Consultation1`
    FOREIGN KEY (`Consultation_Num_Consultation` , `Consultation_Patient_Nss_P` , `Consultation_Medecin_Nss_M`)
    REFERENCES `Consultation` (`Num_Consultation` , `Patient_Nss_P` , `Medecin_Nss_M`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE,
  CONSTRAINT `fk_Acte_Medicale_Liste_Tarif1`
    FOREIGN KEY (`Liste_Tarif_Num_Tarif`)
    REFERENCES `Liste_Tarif` (`Num_Tarif`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE,
  CONSTRAINT `fk_Acte_Medicale_Prescription1`
    FOREIGN KEY (`Prescription_Num_Prescription`)
    REFERENCES `Prescription` (`Num_Prescription`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `Patient_has_Affection` (
  `Patient_Nss_P` INT NOT NULL,
  `Affection_Num_Affection` INT NOT NULL,
  PRIMARY KEY (`Patient_Nss_P`, `Affection_Num_Affection`),
  CONSTRAINT `fk_Patient_has_Affection_Patient1`
    FOREIGN KEY (`Patient_Nss_P`)
    REFERENCES `Patient` (`Nss_P`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE,
  CONSTRAINT `fk_Patient_has_Affection_Affection1`
    FOREIGN KEY (`Affection_Num_Affection`)
    REFERENCES `Affection` (`Num_Affection`)
    ON DELETE CASCADE
    ON UPDATE  CASCADE)
ENGINE = InnoDB;

