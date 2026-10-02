FROM python:3.14.8-alpine3.24@sha256:8acac70227ce3b34da9453120c375cc5b66cd0b062d4dc6bc74286f81a3819e1
ARG DIAGRAMS_VERSION
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==$DIAGRAMS_VERSION

WORKDIR /out
ENTRYPOINT ["python"]
