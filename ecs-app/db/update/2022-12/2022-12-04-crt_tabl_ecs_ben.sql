CREATE TABLE ecs_ben (
	id bigint PRIMARY KEY,
	ben_name VARCHAR (255) NOT NULL,
	ben_med_num VARCHAR (255) NOT NULL,
	ben_service_item VARCHAR (255),
	ben_service_date DATE,
	initial_date_determination DATE,
	crtd_on TIMESTAMP NOT NULL,
    updt_on TIMESTAMP NOT NULL
);