ARG PRIVACY_IDEA_VERSION=3.6.2
FROM we10710aa/privacyidea-base:${PRIVACY_IDEA_VERSION}

WORKDIR /privacyidea

RUN pip install PyMySQL
RUN pip install pymysql-sa

COPY init.sh /privacyidea/

CMD [ "/bin/bash", "init.sh" ]