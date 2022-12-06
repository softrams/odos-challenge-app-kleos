CREATE TABLE ecs_question_answer (
	id bigint PRIMARY KEY,
    answer_numeric INT NULL,
    answer_text VARCHAR(1000) NULL,
    answer_date DATE NULL,
    answer_yn BOOLEAN NULL,
    user_id bigint NOT NULL REFERENCES ecs_user (id),
    question_id bigint NOT NULL REFERENCES ecs_question (id)
);