CREATE TABLE Animal(
animalID integer PRIMARY KEY,
animalName char(30),
age integer,
breed char(60),
sex char(1) Default "M",
available boolean Default True 
);

INSERT INTO Animal values( 1 , "Bud", 10 , "Canary", "M", True );
INSERT INTO Animal values( 2 , "Stella",12, "Persian", "F", True);
INSERT INTO Animal values( 3 , "Riley",5, "Chihuahua", "F" , True);
INSERT INTO Animal values( 4 , "Amber",1,"Rottwieler", "F", True);
INSERT INTO Animal values( 5 , "LeBron",23, "GOAT", "M", True);
INSERT INTO Animal values( 6 ,"Micheal",23, "Great Dane", "M", True);
INSERT INTO Animal values( 7 , "Sky", 8, "Owl", "M", True);
INSERT INTO Animal values( 8 , "Ron", 2, "British Shorthair", "M", True);
INSERT INTO Animal values( 9 , "Leslie", 1, "Savannah", "F", True);
INSERT INTO Animal values( 10 ,  "Ann", 3,"Munchkin", "F", True);
INSERT INTO Animal values( 11 ,  "Corina", 4, "Hummingbird", "F", True);
INSERT INTO Animal values( 12 ,  "Jeff", 5, "Syrian", "M", True);
INSERT INTO Animal values( 13 , "Hanna", 6, "Dwarf Campbell", "F", True);
INSERT INTO Animal values( 14 ,  "Snickers", 7, "German Shepard", "M", True);
INSERT INTO Animal values( 15 ,  "Cancer",  8, "Chiken", "M" , True);