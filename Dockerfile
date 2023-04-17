FROM python:3.10.11-alpine3.17
RUN apk add --update --no-cache \
  curl\
  build-base\
  graphviz\
  ttf-freefont\ 
  && pip install --no-cache-dir diagrams==0.23.3

WORKDIR /out
ENTRYPOINT ["python"]
