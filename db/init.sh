create user root with password 'admin123';
drop database if exists "hello-db" with force;
create database "hello-db";
grant all privileges on database "hello-db" to  root ;