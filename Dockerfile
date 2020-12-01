FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chmod 777 /reports
RUN chmod 777 /src
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
