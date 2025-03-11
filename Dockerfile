FROM python:3.11-bookworm

RUN apt-get update
RUN apt-get  install -y build-essential libffi-dev

RUN pip install wheel setuptools pip --upgrade

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
