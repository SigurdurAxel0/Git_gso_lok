#Sigurður Axel
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
    lengdsek INT,
    texti TEXT,
    diskur INT,
    flytjandi INT,
    tegund1 INT,
    FOREIGN KEY (diskur) REFERENCES diskur(ID),
    FOREIGN KEY (flytjandi) REFERENCES flytjandi(ID),
    FOREIGN KEY (tegund1) REFERENCES tegund(ID)
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
    ("Hard Rock"),
    ("Soul"),
    ("Opera"),
    ("Classical Music"),
    ("Jazz");

insert into
    flytjandi(nafn,faedingardagur,lysing,danardagur,flokkur_flytjanda)
values
    ("Brian Bedford",1990,"leikari dó 80",1970,3),
    ("Alan Rickman",1670,"leikari dó 69",NULL,2),
	("Queen",1970,"Queen var bresk rokkhljómsveit sem kom fram á sjónarsviðið 1970. Hún var stofnuð af Freddie Mercury söngvara sveitarinnar, Roger Taylor trommuleikara og Brian May gítarleikara í London sama ár.",NULL,2),
    ("René Angélil",1892,"Sóngvari og dó 73",2016,1),
    ("Dan Haggerty",1921,"leikari dó 74",NULL,1);

INSERT INTO
    diskur(nafn,utgafudagur,utgefandi)
VALUES
    ("Bohemian Rhapsody",19700508,1),
    ("Stairway to Heaven ",19661006,1),
    ("Imagine",19871029,3),
    ("Smells Like Teen Spirit",19830406,1),
    ("Hotel California",19875022,1),
    ("Sweet Child O'Mine ",19751424,2),
    ("One",19750609,1);

INSERT INTO
    lag(nafn,lengdsek,texti,diskur,flytjandi,tegund1)
VALUES
    ("Like a Rolling Stone ",253,"Once upon a time you dressed so fine
	Threw the bums a dime in your prime, didn't you?
	People call say 'beware doll, you're bound to fall'
	You thought they were all kidding you
	You used to laugh about
	Everybody that was hanging out
	Now you don't talk so loud
	Now you don't seem so proud
	About having to be scrounging your next meal
	",3,5,4),
    ("Hey Jude",239,"Hey Jude, don't make it bad
	Take a sad song and make it better
	Remember to let her into your heart
	Then you can start to make it better",3,5,4),
    ("Caruso ",221,"Qui dove il mare luccica
	E tira forte il vento
	Su una vecchia terrazza
	Davanti al golfo di Surriento

	Un uomo abbraccia una ragazza
	Dopo che aveva pianto
	Poi si schiarisce la voce
	E ricomincia il canto
	Read more: Luciano Pavarotti - Caruso Lyrics | MetroLyrics ",3,5,4),
    ("Apocalypse ",286,"You leapt from crumbling bridges watching cityscapes turn to dust
	Filming helicopters crashing in the ocean from way above

	Got the music in you baby,
	Tell me why
	Got the music in you baby,
	Tell me why
	You’ve been locked in here forever & you just can’t say goodbye
	",5,3,5),
    ("Free Bird",256,"
	If I leave here tomorrow
	Would you still remember me?
	For I must be traveling on now
	'Cause there's too many places I've got to see.",5,3,5),
    ("A Day in the Life",265,"I read the news today, oh boy 
	About a lucky man who made the grade 
	And though the news was rather sad 
	Well I just had to laugh 
	I saw the photograph. 
	",6,4,3),
    ("Lose Yourself",408,"Look, if you had, one shot, or one opportunity
	To seize everything you ever wanted. In one moment
	Would you capture it, or just let it slip?
	Yo
	",6,4,3),
    ("November Rain",423,"When I look into your eyes
	I can see a love restrained
	But darlin' when I hold you
	Don't you know I feel the same",6,4,3),
    ("Good Vibrations",204,"I, I love the colorful clothes she wears
	And the way the sunlight plays upon her hair
	I hear the sound of a gentle word
	On the wind that lifts her perfume through the air",6,4,3),
    ("Johnny B. Goode",488,"Deep down in Louisiana close to New Orleans
	Way back up in the woods among the evergreens
	There stood a log cabin made of earth and wood
	Where lived a country boy named Johnny B. Goode
	Who never ever learned to read or write so well
	But he could play a guitar just like a-ringing a bell",6,4,3),
		("Dream On",402,"Every time I look in the mirror
	All these lines on my face getting clearer
	The past is gone
	It went by like dusk to dawn

	Isn't that the way?
	Everybody's got their dues in life to pay

	Yeah, I know nobody knows
	Where it comes and where it goes
	I know it's everybody's sin
	You got to lose to know how to win
	",2,1,1);



#A
SELECT lag.nafn as "Lag", diskur.nafn as "Diskur", lag.texti
FROM lag
INNER JOIN diskur
ON lag.diskur = diskur.ID
WHERE diskur.nafn = "Stairway to Heaven "

#B
SELECT lag.nafn as "Lag", flytjandi.nafn as "Flytjandi", lag.texti
FROM lag
INNER JOIN flytjandi
ON lag.flytjandi = flytjandi.ID
WHERE flytjandi.nafn = "Queen"


