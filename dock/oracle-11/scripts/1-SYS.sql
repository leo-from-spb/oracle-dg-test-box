---- DEVELOPMENT ROLE ----

create role Development
/

grant create cluster,
      create sequence,
      create type,
      create table,
      create view,
      create materialized view,
      create trigger,
      create procedure,
      create operator,
      create indextype,
      create dimension,
      create library,
      create synonym,
      create database link,
      alter database link
to Development
/



---- REMOVE STUPID "SECURITY" ----

alter profile default limit password_life_time unlimited
/

alter profile default
    limit failed_login_attempts unlimited
    password_life_time unlimited
/

alter system set sec_case_sensitive_logon = false  -- starts from Oracle 10
/



---- CREATE GUEST USERS ----

create user Guest identified by G
                  default tablespace users
                  temporary tablespace temp
                  quota 0 on users
/

grant connect to Guest
/



create user Guest_AC identified by GAC
                    default tablespace users
                    temporary tablespace temp
                    quota 0 on users
/

grant connect to Guest_AC
/

grant select_catalog_role to Guest_AC
/


create user Guest_AD identified by GAD
                    default tablespace users
                    temporary tablespace temp
                    quota 0 on users
/

grant connect to Guest_AD
/

grant select any dictionary to Guest_AD
/


create user Guest_AX identified by GAX
                    default tablespace users
                    temporary tablespace temp
                    quota 0 on users
/

grant connect to Guest_AX
/

grant select_catalog_role to Guest_AX
/

grant select any dictionary to Guest_AX
/

