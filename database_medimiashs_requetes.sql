

1) la liste des  affections d'un patient

 SELECT Nom_Affection FROM Patient, Affection, Patient_has_Affection
 WHERE Patient_has_Affection.Patient_Nss_P = Patient.Nss_P 
 AND Patient_has_Affection.Affection_Num_Affection = Affection.Num_Affection AND Patient.Nom_Patient='Ralph Dooley'; 




2) la liste  des patients d'un medecin

SELECT DISTINCT Nom_Patient FROM Patient, Medecin, Consultation
WHERE Consultation.Patient_Nss_P=Patient.Nss_P 
AND Consultation.Medecin_Nss_M=Medecin.Nss_M 
AND Nom_Medecin='Keeley Bernhard I'; 


----Deuxi�me solution--

SELECT Nom_Patient 
FROM Patient, Medecin, Consultation
WHERE Consultation.Patient_Nss_P=Patient.Nss_P 
AND Consultation.Medecin_Nss_M=Medecin.Nss_M
 AND Medecin.Nom_Medecin='Misty Wolff'; 



3)liste des consultations en retard de paiement

SELECT Num_Consultation, Nom_Patient, Date_Consultation, Statut 
FROM Consultation, Patient 
WHERE Statut = 'Non paye' AND (Now()- Date_Consultation)> 30 
AND Consultation.Patient_Nss_P=Patient.Nss_P ;



4) Salaire des m�decins pour un mois donn�

SELECT Nom_Medecin, Nss_M,SUM(Montant) AS Salaire_Mensuel
FROM Medecin, Acte_Medicale
WHERE Date_Creation BETWEEN '2020-02-01' AND '2020-02-29' 
AND Medecin.Nss_M=Acte_Medicale.Consultation_Medecin_Nss_M GROUP BY Nss_M;




5. Les salaires annuels d�un m�decin

SELECT Nom_Medecin, Nss_M, ROUND(SUM(Montant),2) AS RevenusAnnuel 
FROM Medecin, Acte_Medicale
 WHERE Date_Creation BETWEEN '2019-01-01' AND '2019-12-31' 
AND Medecin.Nss_M=Acte_Medicale.Consultation_Medecin_Nss_M AND Nss_M=1;




6. La liste des prestations effectu�es pour un m�decin sur une p�riode d�finie (une date
de d�but, une date de fin)

Au mois de f�vrier 2020, le m�decin Keeley Bernhard I a effectu� les prestations suivantes :


SELECT Num_Acte AS Liste_Prestations 
FROM Medecin,Acte_Medicale
WHERE Date_Creation BETWEEN '2020-02-01' AND '2020-02-29' 
AND Nom_Medecin= 'Keeley Bernhard I' 
AND Medecin.Nss_M= Acte_Medicale.Consultation_Medecin_Nss_M;


7. Le tarif d�une consultation d�un patient

SELECT Nom_Patient, Montant AS Tarif 
FROM Acte_Medicale, Patient 
WHERE Acte_Medicale.Consultation_Patient_Nss_P= Patient.Nss_P 
AND Nom_Patient= 'Pogba';



8. Le taux de remboursement global d�un patient en fonction de ses affections

SELECT Nom_Patient, Nom_Affection, Taux_Remboursement
FROM Patient, Affection, Patient_has_Affection, Classe 
WHERE Patient.Nss_P= Patient_has_Affection.Patient_Nss_P 
AND Affection.Num_Affection= Patient_has_Affection.Affection_Num_Affection 
AND Affection.Classe_Num_Classe= Classe.Num_Classe 
AND Nom_Patient= 'Peter Nolan'; 



9. Modification de la profession d�un patient(veuillez changer valeur de profession)

UPDATE Patient
Set Profession = 'Etudiant'
Where Nss_P= 78;



10. Suppression d�un m�decin. Les consultations du m�decin supprim� doivent �tre
supprim�es automatiquement. Les liens vers les actes et prescriptions des
consultations doivent aussi �tre automatiquement supprim�s.

 
DELETE FROM Medecin WHERE Nss_M=7;

