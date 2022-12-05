CREATE TABLE ecs_usr_role (
	id bigint PRIMARY KEY,
    user_id bigint NOT NULL REFERENCES ecs_user (id),
	role_id bigint NOT NULL REFERENCES ecs_role (id),
    constraint uq_user_role unique(user_id, role_id)
);