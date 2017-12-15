# Dockerfile

# FROM directive instructing base image to build upon
FROM python:3
RUN apt-get update -y \
    && apt-get -y install libsasl2-dev python-dev libldap2-dev libssl-dev libsnmp-dev
EXPOSE 8000
ADD . /portal
WORKDIR /portal
RUN pip install -r portal/portal/requirements/requirements.txt
CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]
