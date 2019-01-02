From python:3.7-alpine
MAINTAINER Sami App Developer 

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt  /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /App
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
