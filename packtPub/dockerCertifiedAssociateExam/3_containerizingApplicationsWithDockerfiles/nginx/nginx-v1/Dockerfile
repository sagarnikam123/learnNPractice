ARG VERSION=18.04

FROM ubuntu:${VERSION}

LABEL creator="Cerulean Canvas"

RUN apt-get update && apt-get install -y curl nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /backup-content

VOLUME /backup-content

ENV EDITOR /usr/bin/nano

WORKDIR /var/www

COPY /nginx-v1/index.html /var/www/html/

EXPOSE 80

HEALTHCHECK --interval=10s --timeout=5s CMD curl --fail http://localhost:80/ || exit 1

STOPSIGNAL SIGQUIT

ENTRYPOINT ["nginx", "-g"]

CMD ["daemon off;"]
