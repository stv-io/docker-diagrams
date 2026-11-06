FROM python:3.15.2-alpine3.24@sha256:a0f2e268f2ce8f3709611a90054ec6a8ae31f6251f5896b8648b9bb99835e30a
ARG DIAGRAMS_VERSION
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==$DIAGRAMS_VERSION

WORKDIR /out
ENTRYPOINT ["python"]
