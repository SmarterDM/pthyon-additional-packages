FROM python:3.6-slim

RUN apt-get update
RUN apt-get install unixodbc -y
RUN apt-get install unixodbc-dev -y
RUN apt-get install freetds-dev -y
RUN apt-get install freetds-bin -y
RUN apt-get install tdsodbc -y
RUN apt-get --assume-yes install cron
RUN apt-get --assume-yes install gcc
RUN apt-get update && apt-get -y install cron busybox
RUN apt-get install --reinstall build-essential -y