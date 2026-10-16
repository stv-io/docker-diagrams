FROM python:3.15.0-alpine3.24@sha256:ff4d3c9b1a48f646eedd93182aaea385c7a5452f4c8a8cd7cef686babacf4928
ARG DIAGRAMS_VERSION
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==$DIAGRAMS_VERSION

WORKDIR /out
ENTRYPOINT ["python"]
