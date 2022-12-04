package com.softrams.ecs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.batch.JobExecutionExitCodeGenerator;
import org.springframework.context.ApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Date;

@SpringBootApplication
public class EcsAppApplication {
	private static final Logger log = LoggerFactory.getLogger(EcsAppApplication.class);
	public static void main(String[] args) {

		try{
			ApplicationContext   ctx = SpringApplication.run(EcsAppApplication.class, args);
			checkDB(ctx);
		}catch (Exception e){
			log.info("failed to start application!");
		}

	}

	private static void checkDB(ApplicationContext ctx) {
		JdbcTemplate jdbc = (JdbcTemplate) ctx.getBean("jdbcTemplate");
		try {
			Date now = jdbc.queryForObject("Select now()", Date.class);
			log.info("DB connection successfully checked at {}", now.toString());
		} catch (Exception e) {
			log.info("Failed to connect to DB.");
			SpringApplication.exit(ctx, new JobExecutionExitCodeGenerator());
		}
	}

}
