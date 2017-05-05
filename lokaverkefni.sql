create database 1007002630_lokaverk;
use database 1007002630_lokaverk;


CREATE TABLE flokkur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

CREATE TABLE utgefandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

CREATE TABLE tegund(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

    
CREATE TABLE flytjandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    faedingardagur INT,
    lysing VARCHAR(555),
    danardagur INT,
    flokkur_flytjanda INT,
    FOREIGN KEY (flokkur_flytjanda) REFERENCES flokkur(ID)
);

CREATE TABLE diskur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    utgafudagur INT,
    utgefandi INT,
    FOREIGN KEY (utgefandi) REFERENCES utgefandi(ID)
);


CREATE TABLE lag(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    lengd_sek INT,
    texti TEXT,
    diskur INT,
    flytjandi INT,
    tegund INT,
    FOREIGN KEY (diskur) REFERENCES diskur(ID),
    FOREIGN KEY (flytjandi) REFERENCES flytjandi(ID),
    FOREIGN KEY (tegund) REFERENCES tegund(ID)
);