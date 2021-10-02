FROM python:3.8

ARG PRIVACY_IDEA_VERSION=3.6.2

WORKDIR /privacyidea

RUN pip install privacyidea==${PRIVACY_IDEA_VERSION}

RUN pip install -r /usr/local/lib/privacyidea/requirements.txt