/* A table for myface users */

CREATE TABLE users(
 id CHAR (32) NOT NULL,
 PRIMARY KEY(id),
 user_name VARCHAR(64),
 url VARCHAR(256),
 email VARCHAR(128),
 neck_beard INTEGER
);

/* Initial records */
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'jtimberman', 'http://jtimberman.housepub.org', 'joshua@opscode.com', 4 );
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'someara', 'http://blog.afistfulofservers.net/', 'someara@opscode.com', 5 );
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'jwinsor', 'http://vialstudios.com', 'jamie@vialstudios.com', 4 );
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'cjohnson', 'http://www.chipadeedoodah.com/', 'charles@opscode.com', 3 );
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'jrak', 'http://www.10thmagnitude.com/', 'jrak@10thmagnitude.com', 1 );
INSERT INTO users ( id, user_name, url, email, neck_beard ) VALUES ( uuid(), 'mstratton', 'http://www.arresteddevops.com/', 'mattstratton@getchef.com', 2 );

