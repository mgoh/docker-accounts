# Dockerfile

# FROM directive instructing base image to build upon
FROM python:2
RUN apt-get update -y \
    && apt-get -y install libsasl2-dev python-dev libldap2-dev libssl-dev libsnmp-dev
EXPOSE 8000
ADD . /accounts.cca.edu
WORKDIR /accounts.cca.edu
RUN pip install -r accounts.cca.edu/project/requirements/requirements.txt
CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]
