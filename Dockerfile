FROM liquibase:4.29.2-alpine
USER root
RUN lpm add mysql --global \
    && apk add --no-cache gettext

WORKDIR /liquibase/changelog

ADD . .

ENTRYPOINT ["./run.sh"]