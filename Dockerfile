FROM python:alpine3.11
RUN apk add --update --no-cache \
  curl\
  graphviz\
  ttf-freefont

RUN pip3 install diagrams==0.10.0

ENTRYPOINT ["python"]