FROM kong:3.0.2-alpine

USER root

RUN apk add git && \
    luarocks install kong-oidc && \
    luarocks install kong-jwt2header && \
    luarocks install kong-upstream-jwt

USER kong