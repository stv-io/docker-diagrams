FROM python:3.13.4-alpine3.21@sha256:70f816e6bc36b178b2629c10b44b6ff7735c1ffc75d3b1d871f85490a4e62310
ARG DIAGRAMS_VERSION
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==$DIAGRAMS_VERSION

WORKDIR /out
ENTRYPOINT ["python"]
