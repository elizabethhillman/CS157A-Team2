# Create contact info table and insert data

#Create and insert into admin table
CREATE TABLE helpingpaw.admin(username VARCHAR(45) PRIMARY KEY, adminid INT);
INSERT INTO helpingpaw.admin VALUES("christom",1);
INSERT INTO helpingpaw.admin VALUES("s.schauer",2);
INSERT INTO helpingpaw.admin VALUES("e.esguerra",3);
INSERT INTO helpingpaw.admin VALUES("barrythemanager",4);
INSERT INTO helpingpaw.admin VALUES("sarahtheassistant",5);
INSERT INTO helpingpaw.admin VALUES("jessabeller",6);
INSERT INTO helpingpaw.admin VALUES("delenramos",7);
INSERT INTO helpingpaw.admin VALUES("eHillman",8);
INSERT INTO helpingpaw.admin VALUES("bLopez",9);
INSERT INTO helpingpaw.admin VALUES("bonnieBill",10);
INSERT INTO helpingpaw.admin VALUES("admin11",11);
INSERT INTO helpingpaw.admin VALUES("emergencyAdmin",12);
INSERT INTO helpingpaw.admin VALUES("guestAdmin",13);
INSERT INTO helpingpaw.admin VALUES("davidtom",14);
INSERT INTO helpingpaw.admin VALUES("maryjoe",15);

#Create and insert into adopter table
CREATE TABLE helpingpaw.adopter(username VARCHAR(45) PRIMARY KEY, adoptedid INT);
INSERT INTO helpingpaw.adopter VALUES("mj300",1);
INSERT INTO helpingpaw.adopter VALUES("ronniem",2);
INSERT INTO helpingpaw.adopter VALUES("puppyluvr",3);
INSERT INTO helpingpaw.adopter VALUES("fossilfighter",4);
INSERT INTO helpingpaw.adopter VALUES("cp30",5);
INSERT INTO helpingpaw.adopter VALUES("djade16",6);
INSERT INTO helpingpaw.adopter VALUES("winchester.m",7);
INSERT INTO helpingpaw.adopter VALUES("sarahcoleman",8);
INSERT INTO helpingpaw.adopter VALUES("djramos",9);
INSERT INTO helpingpaw.adopter VALUES("meowmeow",10);
INSERT INTO helpingpaw.adopter VALUES("birdbrain",11);
INSERT INTO helpingpaw.adopter VALUES("birdsandthings",12);
INSERT INTO helpingpaw.adopter VALUES("ladybunny",13);
INSERT INTO helpingpaw.adopter VALUES("jessicarabbit",14);
INSERT INTO helpingpaw.adopter VALUES("furryfriend",15);


CREATE TABLE helpingpaw.Animal(
animalID integer PRIMARY KEY,
animalName char(30),
age integer,
breed char(60),
sex char(1) Default "M",
available boolean Default True 
);
INSERT INTO helpingpaw.Animal values( 1 , "Bud", 10 , "Canary", "M", True );
INSERT INTO helpingpaw.Animal values( 2 , "Stella",12, "Persian", "F", True);
INSERT INTO helpingpaw.Animal values( 3 , "Riley",5, "Chihuahua", "F" , True);
INSERT INTO helpingpaw.Animal values( 4 , "Amber",1,"Rottwieler", "F", True);
INSERT INTO helpingpaw.Animal values( 5 , "LeBron",23, "GOAT", "M", True);
INSERT INTO helpingpaw.Animal values( 6 ,"Micheal",23, "Great Dane", "M", True);
INSERT INTO helpingpaw.Animal values( 7 , "Sky", 8, "Owl", "M", True);
INSERT INTO helpingpaw.Animal values( 8 , "Ron", 2, "British Shorthair", "M", True);
INSERT INTO helpingpaw.Animal values( 9 , "Leslie", 1, "Savannah", "F", True);
INSERT INTO helpingpaw.Animal values( 10 ,  "Ann", 3,"Munchkin", "F", True);
INSERT INTO helpingpaw.Animal values( 11 ,  "Corina", 4, "Hummingbird", "F", True);
INSERT INTO helpingpaw.Animal values( 12 ,  "Jeff", 5, "Syrian", "M", True);
INSERT INTO helpingpaw.Animal values( 13 , "Hanna", 6, "Dwarf Campbell", "F", True);
INSERT INTO helpingpaw.Animal values( 14 ,  "Snickers", 7, "German Shepard", "M", True);
INSERT INTO helpingpaw.Animal values( 15 ,  "Cancer",  8, "Chiken", "M" , True);

Create TABLE helpingpaw.Bird(
animalID integer PRIMARY KEY,
beakSize integer
);
INSERT INTO helpingpaw.Bird values( 1 , 5);
INSERT INTO helpingpaw.Bird values( 7 , 1);
INSERT INTO helpingpaw.Birdl values( 9 , 3);
INSERT INTO helpingpaw.Bird values( 11 ,  4);
INSERT INTO helpingpaw.Bird values( 15 ,  4);
INSERT INTO helpingpaw.Bird values( 38 ,  10);
INSERT INTO helpingpaw.Bird values( 39 , 11);
INSERT INTO helpingpaw.Bird values( 40,  25);
INSERT INTO helpingpaw.Bird values( 41 ,  6);
INSERT INTO helpingpaw.Bird values( 42 , 13);
INSERT INTO helpingpaw.Bird values( 43 ,  14);
INSERT INTO helpingpaw.Bird values( 44 , 27);
INSERT INTO helpingpaw.Bird values( 45 ,  7);
INSERT INTO helpingpaw.Bird values( 46 ,  8);
INSERT INTO helpingpaw.Bird values( 47 ,  9);
INSERT INTO helpingpaw.Bird values( 48 ,  10);

Create TABLE helpingpaw.cat(
animalID integer PRIMARY KEY,
hypoallergenic boolean DEFAULT False,
size integer 
);
INSERT INTO  helpingpaw.cat values( 2 , True, 10);
INSERT INTO  helpingpaw.cat values( 8 , False, 11);
INSERT INTO  helpingpaw.cat values( 9 , False, 25);
INSERT INTO  helpingpaw.cat values( 10 , False, 6);


INSERT INTO  helpingpaw.cat values( 16 , True, 10);
INSERT INTO  helpingpaw.cat values( 17 , False, 11);
INSERT INTO  helpingpaw.cat values( 18 , False, 25);
INSERT INTO  helpingpaw.cat values( 19 , False, 6);
INSERT INTO  helpingpaw.cat values( 20 , True, 13);
INSERT INTO  helpingpaw.cat values( 21 , False, 14);
INSERT INTO  helpingpaw.cat values( 22 , False, 27);
INSERT INTO  helpingpaw.cat values( 23 , False, 7);
INSERT INTO  helpingpaw.cat values( 24 , True, 8);
INSERT INTO  helpingpaw.cat values( 25 , False, 9);
INSERT INTO  helpingpaw.cat values( 26 , False, 10);


CREATE TABLE helpingpaw.contactinformation (email VARCHAR(45) PRIMARY KEY, address VARCHAR(45), phone VARCHAR(45));
INSERT INTO helpingpaw.contactinformation VALUES ("mj300@gmail.com","3298 Mount Rainier Dr","4081845555");
INSERT INTO helpingpaw.contactinformation VALUES ("ronniem@yahoo.com","1801 Mount Vernon Dr","4082934545");
INSERT INTO helpingpaw.contactinformation VALUES ("puppyluvr@hotmail.com","130 1st Ave","9251083295");
INSERT INTO helpingpaw.contactinformation VALUES ("abbygp@gmail.com","2995 Maple St","4089252091");
INSERT INTO helpingpaw.contactinformation VALUES ("christom@hotmail.com","10 Arcadia Ave","9251430925");
INSERT INTO helpingpaw.contactinformation VALUES ("fossilfighter@gmail.com","5267 Campbell Ave","4081088795");
INSERT INTO helpingpaw.contactinformation VALUES ("clyde.pill@gmail.com","1504 Clyde Ave","9256789289");
INSERT INTO helpingpaw.contactinformation VALUES ("sarah.schauer@gmail.com","1350 Beach St","9256789289");
INSERT INTO helpingpaw.contactinformation VALUES ("deanna.jade@gmail.com","1900 Elm St","4087345764");
INSERT INTO helpingpaw.contactinformation VALUES ("e.esguerra@gmail.com","1400 The Woods Dr","41653405555");
INSERT INTO helpingpaw.contactinformation VALUES ("m.winchester@gmail.com","1483 Laguna Cir","2096254137");
INSERT INTO helpingpaw.contactinformation VALUES ("s.coleman@gmail.com","3219 Eiffel Dr","2095556723");
INSERT INTO helpingpaw.contactinformation VALUES ("birdsandthings@gmail.com","1800 Murphy Ave","2098001456");
INSERT INTO helpingpaw.contactinformation VALUES ("djramos@gmail.com","2424 Linden St","4081354187");
INSERT INTO helpingpaw.contactinformation VALUES ("jason.arg@gmail.com","34 Nob Hill Pl","4081457639");

CREATE TABLE helpingpaw.contains (email VARCHAR(45) PRIMARY KEY, username VARCHAR(45) PRIMARY KEY);
INSERT INTO helpingpaw.contains VALUES ("mj300@gmail.com","mj300");
INSERT INTO helpingpaw.contains VALUES ("ronniem@yahoo.com","ronniem");
INSERT INTO helpingpaw.contains VALUES ("puppyluvr@hotmail.com","puppyluvr");
INSERT INTO helpingpaw.contains VALUES ("abbygp@gmail.com","puppyluver01");
INSERT INTO helpingpaw.contains VALUES ("christom@hotmail.com","christom");
INSERT INTO helpingpaw.contains VALUES ("fossilfighter@gmail.com","fossilfighter");
INSERT INTO helpingpaw.contains VALUES ("clyde.pill@gmail.com","cp30");
INSERT INTO helpingpaw.contains VALUES ("sarah.schauer@gmail.com","s.schauer");
INSERT INTO helpingpaw.contains VALUES ("deanna.jade@gmail.com","djade16");
INSERT INTO helpingpaw.contains VALUES ("e.esguerra@gmail.com","e.esguerra");
INSERT INTO helpingpaw.contains VALUES ("m.winchester@gmail.com","winchester.m");
INSERT INTO helpingpaw.contains VALUES ("s.coleman@gmail.com","sarahcoleman");
INSERT INTO helpingpaw.contains VALUES ("birdsandthings@gmail.com","birdsandthings");
INSERT INTO helpingpaw.contains VALUES ("djramos@gmail.com","djramos");
INSERT INTO helpingpaw.contains VALUES ("jason.arg@gmail.com","argonaut2000");

Create TABLE helpingpaw.Dog(
animalID integer PRIMARY KEY,
hypoallergenic boolean DEFAULT False,
size integer 
);
INSERT INTO helpingpaw.Dog values( 3 , True, 32 );
INSERT INTO helpingpaw.Dog values( 4 , False,50);
INSERT INTO helpingpaw.Dog values( 6 , False,40);
INSERT INTO helpingpaw.Dog values( 14 , False, 35);

INSERT INTO helpingpaw.Dog values( 27 , True, 10);
INSERT INTO helpingpaw.Dog values( 28 , False, 11);
INSERT INTO helpingpaw.Dog values( 29, False, 25);
INSERT INTO helpingpaw.Dog values( 30 , False, 6);
INSERT INTO helpingpaw.Dog values( 31 , True, 13);
INSERT INTO helpingpaw.Dog values( 32 , False, 14);
INSERT INTO helpingpaw.Dog values( 33 , False, 27);
INSERT INTO helpingpaw.Dog values( 34 , False, 7);
INSERT INTO helpingpaw.Dog values( 35 , True, 8);
INSERT INTO helpingpaw.Dog values( 36 , False, 9);
INSERT INTO helpingpaw.Dog values( 37 , False, 10);

CREATE TABLE helpingpaw.InPost(
postID 	integer,
animalID integer,
Primary Key(postID, animalID)
);
INSERT INTO helpingpaw.InPost values( 1 , 1 );
INSERT INTO helpingpaw.InPost values( 2 , 1 );
INSERT INTO helpingpaw.InPost values( 3 , 2 );
INSERT INTO helpingpaw.InPost values( 4 , 3 );
INSERT INTO helpingpaw.InPost values( 5 , 4);
INSERT INTO helpingpaw.InPost values( 6 ,5 );
INSERT INTO helpingpaw.InPost values( 7 , 6 );
INSERT INTO helpingpaw.InPost values( 8 , 7);
INSERT INTO helpingpaw.InPost values( 9 ,  8);
INSERT INTO helpingpaw.InPost values( 10 ,  9);
INSERT INTO helpingpaw.InPost values( 11 ,  10);
INSERT INTO helpingpaw.InPost values( 12 ,  11);
INSERT INTO helpingpaw.InPost values( 13 , 12);
INSERT INTO helpingpaw.InPost values( 14 ,  13);
INSERT INTO helpingpaw.InPost values( 15 ,  14);

Create TABLE helpingpaw.other(
animalID integer PRIMARY KEY,
animalType char(40)
);
INSERT INTO helpingpaw.other values( 5 , "Goat");
INSERT INTO helpingpaw.other values( 12 , "Hamster" );
INSERT INTO helpingpaw.other values( 13 , "Hamster");
INSERT INTO helpingpaw.other values( 49 , "Goat");
INSERT INTO helpingpaw.other values( 50 , "Horse" );
INSERT INTO helpingpaw.other values( 51 , "Horse");
INSERT INTO helpingpaw.other values( 52 , "Horse" );
INSERT INTO helpingpaw.other values( 53 , "Snake" );
INSERT INTO helpingpaw.other values( 54 , "Hamster");
INSERT INTO helpingpaw.other values( 55 , "Snake");
INSERT INTO helpingpaw.other values( 56 , "Goat" );
INSERT INTO helpingpaw.other values( 57 , "Snake");
INSERT INTO helpingpaw.other values( 58 , "Mouse");
INSERT INTO helpingpaw.other values( 59 , "Mouse" );
INSERT INTO helpingpaw.other values( 60 , "Mouse");

CREATE TABLE helpingpaw.Posts(
postID 	integer PRIMARY KEY,
timeofCreation TIMESTAMP,
timeResolved TIMESTAMP
);
INSERT INTO helpingpaw.Posts values( 1 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 2 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 3 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 4 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 5 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 6 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 7 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 8 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 9 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 10 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 11 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 12 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 13 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 14 , CURRENT_TIMESTAMP , Null );
INSERT INTO helpingpaw.Posts values( 15 , CURRENT_TIMESTAMP , Null );

# Create and insert into seller table
CREATE TABLE helpingpaw.seller (username VARCHAR(45) PRIMARY KEY, sellerid INT);
INSERT INTO helpingpaw.seller VALUES("puppyluver01",1);
INSERT INTO helpingpaw.seller VALUES("birdsandthings",2);
INSERT INTO helpingpaw.seller VALUES("argonaut2000",3);
INSERT INTO helpingpaw.seller VALUES("christom",4);
INSERT INTO helpingpaw.seller VALUES("lizhill",5);
INSERT INTO helpingpaw.seller VALUES("brandenL",6);
INSERT INTO helpingpaw.seller VALUES("toomanydogs",7);
INSERT INTO helpingpaw.seller VALUES("lizardlounge",8);
INSERT INTO helpingpaw.seller VALUES("hamsterhut",9);
INSERT INTO helpingpaw.seller VALUES("mgeller1989",10);
INSERT INTO helpingpaw.seller VALUES("monicalewis",11);
INSERT INTO helpingpaw.seller VALUES("jessramos",12);
INSERT INTO helpingpaw.seller VALUES("marykate",13);
INSERT INTO helpingpaw.seller VALUES("kitkatclub",14);
INSERT INTO helpingpaw.seller VALUES("rabbitsonrabbits",15);

# Create and insert into users table
CREATE TABLE helpingpaw.users(name VARCHAR(45) PRIMARY KEY, permission VARCHAR(45), password VARCHAR(45));
INSERT INTO helpingpaw.users VALUES("mj300","user","michaeljackson");
INSERT INTO helpingpaw.users VALUES("ronniem","user","4hsdf8e");
INSERT INTO helpingpaw.users VALUES("puppyluvr","user","iheartdogs!");
INSERT INTO helpingpaw.users VALUES("puppyluver01","user","ilikecatstoo");
INSERT INTO helpingpaw.users VALUES("christom","admin","09ksj24d37!");
INSERT INTO helpingpaw.users VALUES("fossilfighter","user","fossilmaster");
INSERT INTO helpingpaw.users VALUES("c3p0","user","r2d2sux");
INSERT INTO helpingpaw.users VALUES("s.schauer","admin","Bbroski0405");
INSERT INTO helpingpaw.users VALUES("djade16","user","pbaguette123");
INSERT INTO helpingpaw.users VALUES("e.esguerra","admin","123456");
INSERT INTO helpingpaw.users VALUES("winchester.m","user","mysteryhouse");
INSERT INTO helpingpaw.users VALUES("sarahcoleman","user","password123");
INSERT INTO helpingpaw.users VALUES("birdsandthings","agency","BirdsForever");
INSERT INTO helpingpaw.users VALUES("djramos","user","discjockey456");
INSERT INTO helpingpaw.users VALUES("argonaut2000","user","piratelifeforme");
