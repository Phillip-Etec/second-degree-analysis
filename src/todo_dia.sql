ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

CREATE USER app
IDENTIFIED BY app123
DEFAULT TABLESPACE  users
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON users;

GRANT CONNECT, RESOURCE TO app;