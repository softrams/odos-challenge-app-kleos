ALTER DATABASE :dbName WITH ALLOW_CONNECTIONS false;
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = ':dbName';

DROP DATABASE IF EXISTS :dbName;