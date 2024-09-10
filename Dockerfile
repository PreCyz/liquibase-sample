FROM liquibase:4.29.2
USER root
RUN lpm add mysql --global \
    && apt-get update \
    && apt-get install -y gettext-base

WORKDIR /liquibase/changelog

ADD . .

ENTRYPOINT ["./run.sh"]