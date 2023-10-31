FROM ghcr.io/hlhc/alpine:rolling@sha256:4d340e3e0e9b6ad5b2e9f47398ceecdb63f9a43f66b7233f9ef0607d2211226e

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main unrar
#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./hlhc/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
