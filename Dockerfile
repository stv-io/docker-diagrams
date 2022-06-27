FROM python:3.10.5-alpine3.16
RUN apk add --update --no-cache \
  curl\
  graphviz\
  ttf-freefont

RUN pip3 install diagrams==0.21.1

WORKDIR /out
ENTRYPOINT ["python"]
