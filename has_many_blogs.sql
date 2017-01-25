DROP USER "has_many_user";

CREATE USER "has_many_user";

DROP DATABASE IF EXISTS "has_many_blogs";

CREATE DATABASE "has_many_blogs" OWNER "has_many_user";

DROP TABLE IF EXISTS users;

CREATE TABLE users(
	id serial NOT NULL,
	username varchar(90) NOT NULL,
	first_name varchar(90) NULL,
	last_name varchar(90) NULL,
	created_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
	updated_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts(
	id serial NOT NULL,
	title varchar(180) NULL,
	url varchar(510) NULL,
	content text NULL,
	created_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
	updated_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
	PRIMARY KEY (id)
	);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
	id serial NOT NULL,
	body varchar(510) NULL,
	created_at timestamp WITHOUT TIME ZONE NOT NULL DEFAULT now(),
	updated_at timestamp WITHOUT TIME ZONE	NOT NULL DEFAULT now(),
	PRIMARY KEY (id)
);
