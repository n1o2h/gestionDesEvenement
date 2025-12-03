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

-- Lister les membres du BDE qui ont rejoint avant une date donnée.
SELECT * FROM membrebde 
WHERE dateAdhesion < "2024-02-1";

-- Compter le nombre total de participants à un événement donné.
SELECT COUNT(idParticipant) from inscire_evenement;

-- Lister les participants inscrits à plusieurs événements.
SELECT idParticipant, COUNT(idEvenement) AS nbrEvenement
FROM inscire_evenement 
GROUP BY idParticipant
HAVING  COUNT(idEvenement) > 1;

-- Afficher les événements ayant lieu dans un mois donné.
SELECT * FROM evenement WHERE MONTH(dateEvenment) = 12;

-- Lister les événements n’ayant pas encore de participants inscrits.
SELECT idEvenement from evenement WHERE idEvenement NOT IN (
      SELECT idEvenement from inscire_evenement);

-- Afficher les détails du sponsor ayant contribué le plus au budget global des événements.


-- Compter le nombre de sponsors associés à chaque événement.
SELECT idEvenement , COUNT(idSponsor) AS nbrSponsor FROM   financier_evenement
GROUP BY idSponsor
;

-- Lister les événements qui ont au moins 10 participants.
SELECT idEvenement , COUNT(idSponsor) AS nbrSponsor FROM   financier_evenement
GROUP BY idSponsor
HAVING COUNT(idSponsor) >= 2;

-- Afficher les détails des membres du BDE impliqués dans l’organisation d’événements spécifiques
SELECT * FROM membrebde WHERE idMombreBDE in (
      SELECT idMombreBDE FROM organiser_evenement WHERE idEvenement = 2
      );


