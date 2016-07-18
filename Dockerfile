# Minimalistic base image
# Used to ensure built artifacts are identical whilst still allowing ability to
# upgrade/apply security patches etc.

FROM alpine:3.4
RUN apk update && apk upgrade \
  && apk add ca-certificates \
  && rm -rf /var/cache/apk/*
