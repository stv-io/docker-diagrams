FROM python:3.14.0-alpine3.21@sha256:814983b0c51602a3fecc22afaff2321f79b547230020e1428e2d778367e2ffed
ARG DIAGRAMS_VERSION
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==$DIAGRAMS_VERSION

WORKDIR /out
ENTRYPOINT ["python"]
