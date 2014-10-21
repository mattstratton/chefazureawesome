/* A table for myface users */

CREATE TABLE users
(                
  id CHAR (32) NOT NULL,
  PRIMARY KEY(id),
  user_name VARCHAR(64),
  neck_beard INTEGER
);

/* Initial records */
INSERT INTO users ( id, user_name, neck_beard ) VALUES ( uuid(), 'jtimberman', 4 );
INSERT INTO users ( id, user_name, neck_beard ) VALUES ( uuid(), 'someara', 5 );
INSERT INTO users ( id, user_name, neck_beard ) VALUES ( uuid(), 'jwinsor', 4 );

