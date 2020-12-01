FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chmod 777 /reports
RUN chmod 777 /src
COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh", "&&", "/entrypoint.sh" ]
