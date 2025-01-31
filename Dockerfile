FROM python:3.13.1-alpine3.21
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\
  && pip install --no-cache-dir diagrams==0.24.1

WORKDIR /out
ENTRYPOINT ["python"]
