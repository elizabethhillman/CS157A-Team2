CREATE TABLE Posts(
postID 	integer PRIMARY KEY,
timeofCreation TIMESTAMP,
timeResolved TIMESTAMP
);

INSERT INTO Posts values( 1 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 2 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 3 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 4 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 5 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 6 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 7 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 8 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 9 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 10 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 11 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 12 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 13 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 14 , CURRENT_TIMESTAMP , Null );
INSERT INTO Posts values( 15 , CURRENT_TIMESTAMP , Null );

Update Posts set timeResolved = CURRENT_TIMESTAMP Where postID = 2;

