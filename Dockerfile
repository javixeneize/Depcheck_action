FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chmod 777 /reports
RUN chmod 777 /src
COPY entrypoint.sh /src/entrypoint.sh
RUN chmod 777 /src/entrypoint.sh
USER dependencycheck
ENTRYPOINT ["/src/entrypoint.sh"]
