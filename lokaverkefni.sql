create database 1007002630_lokaverk;
use database 1007002630_lokaverk;


create table flokkur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

create table utgefandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

create table tegund(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);

    
create table flytjandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    faedingardagur INT,
    lysing VARCHAR(500),
    danardagur INT,
    flokkur_flytjanda INT,
    FOREIGN KEY (flokkur_flytjanda) REFERENCES flokkur(ID)
);

create table diskur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    utgafudagur INT,
    utgefandi INT,
    FOREIGN KEY (utgefandi) REFERENCES utgefandi(ID)
);


create table lag(
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


insert into
    flokkur(nafn)
values
	("Hljómsveit"),
    ("Sóló"),
    ("Dúó");


insert into
    utgefandi(nafn)
values
    ("Robert Stigwood"),
    ("Nicholas Caldwell"),
    ("Pat Harrington Jr");

insert into
    tegund(nafn)
values
    ("Troy Shondell"),
    ("Kitty Kallen"),
    ("Angus Scrimm"),
    ("David Bowie"),
    ("David Margulies");


insert into
    flytjandi(nafn,faedingardagur,lysing,danardagur,flokkur_flytjanda)
values
    ("Brian Bedford",1990,"leikari dó 80",1970,3),
    ("Alan Rickman",1670,"leikari dó 69",NULL,2),
	("Queen",1970,"Queen var bresk rokkhljómsveit sem kom fram á sjónarsviðið 1970. Hún var stofnuð af Freddie Mercury söngvara sveitarinnar, Roger Taylor trommuleikara og Brian May gítarleikara í London sama ár.",NULL,2),
    ("René Angélil",1892,"Sóngvari og dó 73",2016,1),
    ("Dan Haggerty",1921,"leikari dó 74",NULL,1);






















