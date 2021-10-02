ARG PRIVACY_IDEA_VERSION=3.6.2
FROM we10710aa/privacyidea-base:${PRIVACY_IDEA_VERSION}

WORKDIR /privacyidea

RUN pip install gunicorn pymysql-sa PyMySQL

COPY wsgi.py /privacyidea/

EXPOSE 5000

CMD [ "gunicorn","--bind=0.0.0.0:5000", "wsgi:application" ]