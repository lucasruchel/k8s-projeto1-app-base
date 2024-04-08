FROM mysql:oraclelinux8

ENV MYSQL_ROOT_PASSWORD="senha123"
ENV MYSQL_DATABASE="meubanco"

ADD initial.sql /docker-entrypoint-initdb.d/

