FROM container-registry.oracle.com/database/free:23.3.0.0 AS oracle
ENV ORACLE_PWD=password
COPY ./src/ /src
WORKDIR /src
RUN cat create.sql primary_keys.sql foreign_keys.sql checks.sql triggers.sql history.sql \
> /opt/oracle/scripts/startup/all.sql
