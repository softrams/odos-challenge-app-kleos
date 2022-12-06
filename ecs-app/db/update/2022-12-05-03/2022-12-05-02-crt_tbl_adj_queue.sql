CREATE TABLE adj_queue (
	id bigint PRIMARY KEY,
	beneficiary_tracking VARCHAR (255) NOT NULL,
	beneficiary bigint NOT NULL REFERENCES ecs_user (id),
    assigned_to bigint NULL REFERENCES ecs_user (id),
    queue_status bigint NULL REFERENCES adj_status (id),
    created_on TIMESTAMP NULL,
    updated_on TIMESTAMP NULL
);