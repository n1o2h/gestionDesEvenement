CREATE TABLE evenement (
      idEvenement int AUTO_INCREMENT PRIMARY KEY,
      nomEvenement varchar(30),
      description varchar(30),
      dateEvenment date,
      HeureEvenement time,
      lieu varchar(30),
      budgetPrevu decimal
) ENGINE = INNODB;

CREATE TABLE MembreBDE (
      idMembreBDE int AUTO_INCREMENT PRIMARY KEY,
      nomMembreBDE varchar(30),
      prenomMembreBDE varchar(30),
      emailMembreBDE varchar(30),
      roleMembreBDE varchar(30),
      dateAdhesion date
) ENGINE = INNODB;

CREATE TABLE participant (
      idParticipant int AUTO_INCREMENT PRIMARY KEY,
      nomParticipant varchar(30),
      prenomParticipant varchar(30),
      emailParticipant varchar(30),
      statusParticipant varchar(30)
) ENGINE = INNODB;

CREATE TABLE sponsor (
      idSponsor int AUTO_INCREMENT PRIMARY KEY,
      nomEntrepris varchar(30),
      email varchar(30),
      tel varchar(30),
      montantSponsorise decimal
) ENGINE = INNODB;

CREATE TABLE Organiser_Evenement (
      idEvenement int,
      idMembreBDE int,
      PRIMARY KEY (idEvenement, idMembreBDE),
      FOREIGN KEY (idEvenement) REFERENCES evenement (idEvenement),
      FOREIGN KEY (idMembreBDE) REFERENCES MembreBDE (idMembreBDE)
) ENGINE = INNODB;

CREATE TABLE financierEvenement (
      idEvenement int,
      idSponsor int,
      PRIMARY KEY (idEvenement, idSponsor),
      FOREIGN KEY (idEvenement) REFERENCES evenement (idEvenement),
      FOREIGN KEY (idSponsor) REFERENCES sponsor (idSponsor)
) ENGINE = INNODB;

CREATE TABLE insererEvenement (
      idEvenement int AUTO_INCREMENT,
      idParticipant int,
      PRIMARY KEY (idEvenement, idParticipant),
      FOREIGN KEY (idEvenement) REFERENCES evenement (idEvenement),
      FOREIGN KEY (idParticipant) REFERENCES participant (idParticipant)
) ENGINE = INNODB;
INSERT INTO evenement (`nomEvenement`,`description`,`dateEvenment`,`HeureEvenement`,`lieu`,`budgetPrevu`) VALUES
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000),
("IA generative", "evenement de tech", "2025-12-29","16:00:00", "youcode", 21000),
("IA generative", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000),
("IA generative", "evenement de tech", "2025-12-29","16:00:00", "youcode", 21000),
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000),
("IA generative", "evenement de tech", "2025-12-29","16:00:00", "youcode", 21000),
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000),
("teck talk 3", "evenement de tech", "2025-12-29","16:00:00", "youcode", 21000),
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000),
("IA generative", "evenement de tech", "2025-12-29","16:00:00", "youcode", 21000),
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 10", "evenement de tech", "2025-11-15","10:00:00", "youcode", 22000),
("teck talk 6", "evenement de tech", "2025-12-29","16:00:00", "youcode", 22000),
("teck talk", "evenement de tech", "2025-11-29","14:00:00", "youcode", 20000),
("teck talk 2", "evenement de tech", "2025-11-11","14:00:00", "youcode", 20000);


INSERT INTO participant (`nomParticipant`,`prenomParticipant`,`emailParticipant`,`statusParticipant`) VALUES 
("saiss", "nohaila", "saiss@gmail.com", "étudiant active"),
("hammad", "nohaila", "hammad@gmail.com", "invite"),
("saiss", "mouna", "saissM@gmail.com", "étudiant active"),
("tahir", "walid", "tahir@gmail.com", "diplômé"),
("saiss", "aya", "saiss@gmail.com", "étudiant active"),
("ammar", "walid", "ammar@gmail.com", "diplômé"),
("tahir", "walid", "tahir@gmail.com", "diplômé"),
("saiss", "aya", "saiss@gmail.com", "étudiant active"),
("hammad", "nohaila", "hammad@gmail.com", "invite"),
("tahir", "walid", "tahir@gmail.com", "diplômé"),
("saiss", "aya", "saiss@gmail.com", "étudiant active"),
("iyad", "aya", "iyad@gmail.com", "étudiant active"),
("ammar", "walid", "ammar@gmail.com", "diplômé"),
("saiss", "aya", "saiss@gmail.com", "étudiant active"),
("amin", "walid", "amin@gmail.com", "diplômé"),
("ali", "aya", "ali@gmail.com", "étudiant active"),
("hamid", "walid", "hamid@gmail.com", "diplômé"),
("hamza", "aya", "hamza@gmail.com", "étudiant active"),
("walid", "walid", "walid@gmail.com", "diplômé"),
("brahim", "aya", "brahim@gmail.com", "étudiant active");

INSERT INTO membrebde (nomMembreBDE, prenomMembreBDE, emailMembreBDE, roleMembreBDE, dateAdhesion) VALUES
("El Mansouri", "Nohaila", "nohaila.elmansouri@gmail.com", "membre actif", "2024-01-10"),
("Ait Hammad", "Sara", "sara.hammad@gmail.com", "membre actif", "2024-02-05"),
("El Idrissi", "Mouna", "mouna.idrissi@gmail.com", "secrétaire", "2024-03-15"),
("Tahir", "Walid", "walid.tahir@gmail.com", "trésorier", "2024-01-22"),
("Bennani", "Aya", "aya.bennani@gmail.com", "membre actif", "2024-02-18"),
("Ammar", "Yassine", "yassine.ammar@gmail.com", "président", "2024-03-01"),
("Ouazzani", "Salma", "salma.ouazzani@gmail.com", "membre actif", "2024-01-19"),
("Chakiri", "Othmane", "othmane.chakiri@gmail.com", "membre actif", "2024-03-25"),
("Saadi", "Hajar", "hajar.saadi@gmail.com", "membre actif", "2024-02-11"),
("El Fassi", "Anass", "anass.elfassi@gmail.com", "trésorier", "2024-03-10"),
("El Amrani", "Ikram", "ikram.elamrani@gmail.com", "membre actif", "2024-02-23"),
("Bouhdid", "Iyad", "iyad.bouhdid@gmail.com", "secrétaire", "2024-03-14"),
("El Mehdi", "Hamza", "hamza.elmehdi@gmail.com", "membre actif", "2024-01-27"),
("Alaoui", "Amina", "amina.alaoui@gmail.com", "membre actif", "2024-03-19"),
("Idrissi", "Amine", "amine.idrissi@gmail.com", "trésorier", "2024-01-31"),
("Kabbaj", "Ali", "ali.kabbaj@gmail.com", "membre actif", "2024-02-14"),
("Tourabi", "Hamid", "hamid.tourabi@gmail.com", "membre actif", "2024-03-05"),
("Naciri", "Safae", "safae.naciri@gmail.com", "membre actif", "2024-01-16"),
("Bouhouch", "Brahim", "brahim.bouhouch@gmail.com", "membre actif", "2024-02-20"),
("Ben Salah", "Rania", "rania.bensalah@gmail.com", "membre actif", "2024-03-08");

ALTER TABLE sponsor ADD nomContact varchar(40);
INSERT INTO Sponsor (`nomEntrepris`,`nomContact`,`email`,`tel`,`montantSponsorise`) VALUES
("TechPlus", "Ahmed Karim", "ahmed.karim@gmail.com", "0612345678", 5000),
("FoodMarket", "Sara El Idrissi", "sara.idrissi@gmail.com", "0623456781", 3000),
("AutoFix", "Youssef Amrani", "youssef.amrani@gmail.com", "0634567892", 4000),
("GreenShop", "Imane Benali", "imane.benali@gmail.com", "0645678903", 2500),
("SmartPrint", "Walid Tahiri", "walid.tahiri@gmail.com", "0656789014", 6000),
("CasaStore", "Aya Ait Hami", "aya.hami@gmail.com", "0667890125", 3500),
("MediTech", "Hanae El Fassi", "hanae.fassi@gmail.com", "0678901236", 7000),
("CityBike", "Hamza Saadi", "hamza.saadi@gmail.com", "0689012347", 2000),
("FixHome", "Mounir Baraka", "mounir.baraka@gmail.com", "0690123458", 4500),
("WebSoft", "Noura Lahlou", "noura.lahlou@gmail.com", "0601234569", 5500),
("ElectroShop", "Karim Essafi", "karim.essafi@gmail.com", "0612345680", 3000),
("FreshFood", "Asmae Jalil", "asmae.jalil@gmail.com", "0623456791", 2500),
("PrintExpress", "Rachid Malki", "rachid.malki@gmail.com", "0634567802", 3800),
("SunEnergy", "Kawtar Idrissi", "kawtar.idrissi@gmail.com", "0645678913", 5000),
("OceanFish", "Mohamed Bettache", "mohamed.bettache@gmail.com", "0656789024", 4200),
("CasaBooks", "Zineb Hariri", "zineb.hariri@gmail.com", "0667890135", 3200),
("FitZone", "Omar Tazi", "omar.tazi@gmail.com", "0678901246", 6000),
("HomeArt", "Nadia Belaid", "nadia.belaid@gmail.com", "0689012357", 2700),
("CleanPro", "Salma Rami", "salma.rami@gmail.com", "0690123468", 4500),
INSERT INTO organiser_evenement (idEvenement, idMombreBDE) VALUES
(1, 6),
(1, 12),
(2, 3),
(2, 18),
(3, 1),
(3, 14),
(4, 9),
(4, 7),
(5, 4),
(5, 11),
(6, 2),
(6, 16),
(7, 10),
(7, 5),
(8, 8),
(8, 19),
(9, 13),
(9, 2),
(10, 17),
(10, 9),
(11, 3),
(11, 15),
(12, 20),
(12, 6),
(13, 7),
(13, 1),
(14, 11),
(14, 18),
(15, 12),
(15, 4),
(16, 5),
(16, 13),
(17, 14),
(17, 10),
(18, 16),
(18, 8),
(19, 19),
(19, 17),
(20, 15),
(20, 20);

INSERT INTO inscire_evenement (`idEvenement`, `idParticipant`) VALUES
(1, 4),
(2, 11),
(3, 7),
(4, 15),
(5, 3),
(6, 12),
(7, 1),
(8, 19),
(9, 5),
(10, 17),
(11, 8),
(12, 14),
(13, 2),
(14, 16),
(15, 9),
(16, 18),
(17, 6),
(18, 20),
(19, 10),
(20, 13);


INSERT INTO financier_evenement (`idEvenement`, `idSponsor`) VALUES
(12, 2),
(7, 4),
(5, 7),
(9, 3),
(14, 5),
(18, 2),
(20, 8),
(10, 6),
(1, 10),
(4, 11),
(16, 9),
(20, 13),
(11, 12),
(6, 14),
(8, 1),
(19, 5),
(19, 7);


/* les requetes sql */
-- Afficher tous les membres du BDE avec leur rôle et leur date d’adhésion
SELECT * FROM membrebde;

-- Lister tous les événements prévus après une date donnée
-- SELECT * FROM evenement;
-- SELECT * FROM evenement 
-- WHERE dateEvenment="2025-12-29";

-- Afficher les informations des événements ayant un budget supérieur à 5000 MAD
SELECT * FROM evenement 
WHERE budgetPrevu>= 5000;

-- Lister les participants inscrits à un événement spécifique
SELECT * from inscire_evenement;

-- Afficher les sponsors qui ont contribué à des événements ayant un budget supérieur à 3500 MAD
SELECT * FROM sponsor
WHERE idSponsor IN (
      SELECT idSponsor FROM financier_evenement 
      WHERE idEvenement IN (
            SELECT idEvenement FROM evenement
            WHERE budgetPrevu >= 3500
            )
      );

-- Calculer la moyenne du budget des événements organisés.
SELECT AVG(budgetPrevu) FROM evenement WHERE budgetPrevu in (
	SELECT budgetPrevu from evenement WHERE idEvenement in (
		SELECT idEvenement from organiser_evenement
		)
      );

-- Afficher le nom et la date des événements sponsorisés par un sponsor donné
SELECT nomEvenement,dateEvenment FROM evenement WHERE idEvenement in (
	SELECT idEvenement from financier_evenement WHERE idSponsor = 3
);

-- Lister les événements qui se déroulent dans un lieu donné.
SELECT * from evenement WHERE lieu = "youcode";

-- Afficher les 5 derniers événements organisés par le BDE.
SELECT * FROM evenement 
WHERE idEvenement in ( SELECT idEvenement FROM organiser_evenement)
ORDER BY dateEvenment DESC LIMIT 5;



