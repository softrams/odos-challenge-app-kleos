REVOKE ALL ON DATABASE :dbName FROM :dbAppRole;
DROP USER IF EXISTS :dbAppUser;
DROP ROLE IF EXISTS :dbAppRole;