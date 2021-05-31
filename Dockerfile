FROM python:alpine3.12
RUN apk add --update --no-cache \
  curl\
  graphviz\
  ttf-freefont

RUN pip3 install diagrams==0.22.0

WORKDIR /out
ENTRYPOINT ["python"]