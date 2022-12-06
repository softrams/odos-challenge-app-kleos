CREATE TABLE ecs_question (
	id bigint PRIMARY KEY,
	question_name VARCHAR (255) NOT NULL,
	question_required_yn BOOLEAN DEFAULT FALSE,
    question_input_type bigint NOT NULL REFERENCES ecs_input_type (id)
);