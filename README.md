# CabinetMedicalSGBD


CADRE DU PROJET

On veut informatiser la gestion du cabinet médical MediMiashs en créant une base de données relationnelle. 
Voici les informations dont on dispose: Les médecins reçoivent des patients en consultation au cabinet médical.
Pour chaque consultation d’un patient, des actes médicaux sont effectués par les médecins. Chaque acte médical
possède un tarif standard, qui est répertorié dans une liste. Le médecin calcule le prix de la consultation en fonction
des prestations effectuées et de cette liste de tarifs. Le patient peut payer à la fin de sa visite ou ultérieurement.
Si une consultation n’est pas payée au bout d’un mois, elle fera l’objet d’un rappel de paiement.
Les sommes des prestations effectuées chaque mois constituent le revenu des médecins. Cette information permet
aux médecins de remplir leur déclaration fiscale annuelle. Les médecins connaissent la date de naissance,
le sexe et la profession des patients. Ils savent également si les patients souffrent d’un certain nombre
d’affections. Ces affections sont réparties selon des classes standards. Chaque classe d’affections possède
un taux de remboursement par la sécurité sociale. Lors de chaque visite d’un patient, le médecin inscrit la date, 
les prestations et les médicaments prescrits. Si un patient décède, il indiquera la date du décès.


LES PROPOSITIONS DE L'ÉNONCÉ


● Un Médecin est consulté par un Patient
● L’acte médical est crée suite à une consultation
● l’Acte médical possède un tarif
● Liste_Tarif répertorie les tarifs
● Le Médecin calcule le prix
● Le Médecin effectue Une Prestation
● Le patient paye une consultation
● Le patient est rappelé en cas de non paiement
● La Prestation constitue le revenue du médecin
● Un patient souffre d’un certain nombre d’affections
● Tout patient a une profession
● Tout patient a un sexe
● Tout patient a une date de naissance
● Affection appartient à une classe
● Toute affection appartient à une classe
● La Classe d’affections possède un taux de remboursement
● Médicament prescrit des médicaments aux patients
