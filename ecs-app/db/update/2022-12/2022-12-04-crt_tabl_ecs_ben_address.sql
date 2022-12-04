CREATE TABLE ecs_ben_address (
	id bigint PRIMARY KEY,
	street VARCHAR (95),
	city VARCHAR (35),
	state VARCHAR (35),
	zip VARCHAR (10),
	crtd_on TIMESTAMP NOT NULL,
    updt_on TIMESTAMP NOT NULL,
    ecs_ben_id bigint NOT NULL,
    FOREIGN KEY (ecs_ben_id) REFERENCES ecs_ben (id)
);