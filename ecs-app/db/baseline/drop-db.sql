ALTER DATABASE :databaseName WITH ALLOW_CONNECTIONS false;
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = ':databaseName';

DROP DATABASE IF EXISTS :databaseName;