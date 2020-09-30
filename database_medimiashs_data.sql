

INSERT INTO `Patient`(`Nss_P`, `Nom_Patient`, `Sexe`, `Age`, `Profession`, `Date_Deces`) VALUES
(70, 'Pogba', 'M', 26, 'Enseignant',NULL),
(73, 'Kante', 'F', 20, 'Etudiant', NULL),
(74, 'Fekir', 'F', 56, 'Ingenieur', NULL),
(75, 'Daniel ', 'M', 40, 'Serveur',NULL),
(76, 'Marine pire', 'F', 26, 'Commercial', NULL),
(78, 'Ralph Dooley', 'M', 6, 'jeune',NULL),
(201, 'Evangeline Gutmann III', 'F', 5, 'Mineur', NULL),
(718, 'Marjory Weimann', 'M', 56, 'Ingenieur', NULL),
(2023, 'Julius Ankunding DVM', 'F', 57, 'Commercial', NULL),
(2990, 'Cloyd McKenzie', 'M', 93, 'Commercial', '2020-01-01'),
(4498, 'Kira Connelly', 'F', 72, 'Juge', '2019-09-07'),
(31245, 'Linda Larkin DDS', 'F', 40, 'Secretaire', NULL),
(741016, 'Queenie Batz', 'M', 90, 'Retraite', Null),
(749321, 'Peter Nolan', 'F', 57, 'Maçon',NULL),
(914362, 'Elisabeth Hoeger MD', 'M', 25, 'Ouvrier', NULL);


INSERT INTO `Medecin`(`Nss_M`, `Nom_Medecin`, `Sexe`, `Age`, `Adresse`) VALUES
(1, 'Keeley Bernhard I', 'M', 31, '9137 Grant Parkways\nReichelbury, HI 52493-2565'),
(3, 'Chloe Nikolaus', 'F', 34, '4278 Abbott Terrace\nSouth Vivien, MN 56853'),
(4, 'Janice VonRueden', 'M', 50, '062 Larson Knoll Suite 734\nPollichfurt, SD 87822-5954'),
(5, 'Misty Wolff', 'F', 55, '765 Walker Point Apt. 868\nLake Kendrick, IL 51792'),
(6, 'Kiel Prohaska', 'M', 56, '5818 Kuhlman Tunnel Suite 228\nWest Nathaniel, IN 35810'),
(7, 'Bianka Cruickshank', 'F', 68, '60607 Frederic Well\nLake Sven, ME 06621'),
(8, 'Mrs. Frances Wuckert PhD', 'F', 70, '923 Heller Mission\nKonopelskiside, MI 68179'),
(9, 'Ewell Gutkowski', 'F', 66, '3610 Hazle Garden\nAhmadfort, IN 23125-8324'),
(10, 'Demarcus Rolfson PhD', 'M', 32, '938 Howard Shore\nBauchmouth, TN 61657-9520');




INSERT INTO `Consultation`(`Num_Consultation`, `Statut`, `Date_Consultation`, `Patient_Nss_P`, `Medecin_Nss_M`) VALUES
(12, 'Paye', '2019-01-07', 78, 1),
(14, 'Paye', '2019-01-09', 718, 3),
(15, 'Non paye', '2020-02-07', 2023, 4),
(16, 'paye', '2019-02-08', 2990, 5),
(17, 'paye', '2019-03-01', 4498, 6),
(18, 'paye', '2019-04-07', 31245, 7),
(19, 'paye', '2019-04-08', 741016, 8),
(27, 'paye', '2019-02-16', 76, 1),
(28, 'paye', '2019-02-16', 76, 1),
(29, 'paye', '2019-03-16', 76, 1),
(20, 'Non paye', '2020-02-07', 749321, 9),
(21, 'Non paye', '2020-02-08', 914362, 10),
(22, 'Paye', '2020-02-07', 70, 1),
(23, 'paye', '2020-02-15', 73, 1),
(24, 'Paye', '2020-02-09', 74, 1),
(25, 'Non paye', '2020-02-01', 75, 4),
(26, 'paye', '2020-02-16', 76, 4);




INSERT INTO `Liste_Tarif`(`Num_Tarif`, `Nom_Tarif`, `Montant_Tarif`) VALUES
(0, 'eos', '12.25'),
(1, 'aut', '42.45'),
(52, 'laborum', '56.2'),
(455, 'et', '34.7'),
(2697, 'et', '25.88'),
(202222, 'non', '30.61'),
(660818, 'quae', '42.21'),
(961150, 'quaerat', '25.45'),
(41739463, 'qui', '161.38'),
(54943293, 'aut', '37.9');

INSERT INTO `Prescription`(`Num_Prescription`, `Nom_Medicament`, `Quantite`) VALUES
(201, 'ablist', 12),
(202, 'dolprane', 4),
(203, 'seringue', 5),
(204, 'cool', 3),
(205, 'abdc', 25),
(206, 'noen', 30),
(207, 'fil', 42),
(208, 'fadl', 25),
(209, 'aldf', 161),
(210, 'autoa', 3);


INSERT INTO `Acte_Medicale` (`Num_Acte`, `Date_Creation`, `Montant`, `Consultation_Num_Consultation`, `Consultation_Patient_Nss_P`, `Consultation_Medecin_Nss_M`, `Liste_Tarif_Num_Tarif`, `Prescription_Num_Prescription` ) VALUES
(1, '2019-01-07', 12.25, 12, 78, 1, 0, 201),
(3, '2019-01-09', 56.2, 14, 718, 3, 52, 201),
(4, '2020-02-07', 34.7, 15, 2023, 4, 455, 203),
(5, '2019-02-08', 25.88, 16, 2990, 5, 2697, 204),
(6, '2019-03-01', 30.61, 17, 4498, 6, 202222, 205),
(7, '2019-04-07', 42.21, 18, 31245, 7, 660818, 203),
(8, '2019-04-08', 25.45, 19, 741016, 8, 961150, 206),
(9, '2020-02-07', 161.38, 20, 749321, 9, 41739463, 207),
(10, '2020-02-08', 37.9, 21, 914362, 10, 54943293, 208),
(11, '2020-02-07', 12.25, 22, 70, 1, 0, 209),
(12, '2020-02-15', 42.45, 23, 73, 1, 1, 210),
(13, '2020-02-09', 56.2, 24, 74, 1, 52, 201),
(14, '2020-02-01', 34.7, 25, 75, 4, 455, 204),
(15, '2020-02-16', 25.88, 26, 76, 4, 2697, 205),
(16, '2019-02-16', 34.7, 27, 76, 1,  455, 206),
(17, '2019-02-16', 34.7, 28, 76, 1, 455, 208),
(18, '2019-03-16', 34.7, 29, 76, 1, 455, 205);


INSERT INTO `Classe`(`Num_Classe`,  `Categorie`, `Taux_Remboursement` ) VALUES
(30, 'A', 70.00),
(31, 'B', 20.00),
(32, 'C', 30.00),
(33, 'D', 20.00),
(34, 'E', 20.00),
(35, 'F', 23.00),
(36, 'G', 25.00),
(37, 'H', 25.00),
(38, 'J', 50.00),
(39, 'K', 70.00);




INSERT INTO `Affection`(`Num_Affection`, `Nom_Affection`, `Classe_Num_Classe`) VALUES
(0,  'Diabete', 30),
(1, 'Hepatite', 31),
(2, 'malaria', 32),
(3, 'la Grippe', 33),
(4, 'Fièvre ', 34),
(5, 'Leucemie', 35),
(6, 'Metastases', 36),
(7, 'Rougeole', 37),
(8,'Cancer', 38),
(9, 'Cirrhose', 39);




INSERT INTO `Patient_has_Affection`(`Patient_Nss_P`, `Affection_Num_Affection`) VALUES
(78, 0),
(4498, 0),
(78, 1),
(201, 1),
(78, 2),
(718, 2),
(78, 3),
(2023, 3),
(2990, 4),
(4498, 5),
(31245, 6),
(78, 7),
(741016, 7),
(749321, 8),
(914362, 9);


