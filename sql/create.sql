DROP TABLE _user;
DROP SEQUENCE seq_user_id;

CREATE SEQUENCE seq_user_id START 1;

CREATE TABLE _user (
	id integer primary key default nextval('seq_user_id'),
	name varchar(80) NOT NULL,
	email varchar(80) NOT NULL UNIQUE,
	password VARCHAR(32) NOT NULL,
	created timestamp with time zone DEFAULT now()
);

INSERT INTO _user (email, password, name) VALUES (
    'cleverson.carneiro@gmail.com', md5('senha'), 'Cleverson'
);
