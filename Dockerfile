FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chmod 777 /reports
RUN chmod 777 /src
USER dependencycheck
COPY entrypoint.sh /src/entrypoint.sh
ENTRYPOINT ["/src/entrypoint.sh"]
