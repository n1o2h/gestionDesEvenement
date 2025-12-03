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

