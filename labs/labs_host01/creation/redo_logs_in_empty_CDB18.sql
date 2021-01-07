CONNECT / AS SYSDBA

ALTER DATABASE ADD LOGFILE GROUP 4 '/u04/app/oracle/redo/CDB18/redo01.log' size 50M;
ALTER DATABASE ADD LOGFILE GROUP 5 '/u04/app/oracle/redo/CDB18/redo02.log' size 50M;
ALTER DATABASE ADD LOGFILE GROUP 6 '/u04/app/oracle/redo/CDB18/redo03.log' size 50M;
ALTER SYSTEM SWITCH LOGFILE;
ALTER SYSTEM SWITCH LOGFILE;
ALTER SYSTEM SWITCH LOGFILE;
ALTER DATABASE DROP LOGFILE GROUP 1;
ALTER DATABASE DROP LOGFILE GROUP 2;
ALTER DATABASE DROP LOGFILE GROUP 3;

ALTER PROFILE DEFAULT LIMIT
PASSWORD_LIFE_TIME UNLIMITED
PASSWORD_GRACE_TIME UNLIMITED
PASSWORD_REUSE_TIME UNLIMITED
PASSWORD_REUSE_MAX UNLIMITED
FAILED_LOGIN_ATTEMPTS UNLIMITED
PASSWORD_LOCK_TIME UNLIMITED
INACTIVE_ACCOUNT_TIME UNLIMITED
IDLE_TIME UNLIMITED
PASSWORD_VERIFY_FUNCTION NULL;

ALTER PROFILE ORA_STIG_PROFILE LIMIT
PASSWORD_LIFE_TIME UNLIMITED
PASSWORD_GRACE_TIME UNLIMITED
PASSWORD_REUSE_TIME UNLIMITED
PASSWORD_REUSE_MAX UNLIMITED
FAILED_LOGIN_ATTEMPTS UNLIMITED
PASSWORD_LOCK_TIME UNLIMITED
INACTIVE_ACCOUNT_TIME UNLIMITED
IDLE_TIME UNLIMITED
PASSWORD_VERIFY_FUNCTION NULL;

exit