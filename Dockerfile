FROM python:3.10.14-alpine3.19
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==0.23.4

WORKDIR /out
ENTRYPOINT ["python"]
