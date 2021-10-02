FROM ubuntu:20.04

ARG PRIVACY_IDEA_VERSION=3.6.2

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /privacyidea

RUN pip install privacyidea==${PRIVACY_IDEA_VERSION} gunicorn

RUN pip install -r /usr/local/lib/privacyidea/requirements.txt

COPY wsgi.py /privacyidea/

EXPOSE 5000

CMD [ "gunicorn","--bind=0.0.0.0:5000", "wsgi:application" ]