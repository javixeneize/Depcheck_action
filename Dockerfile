FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chown dependencycheck /reports
USER dependencycheck
COPY entrypoint.sh /src/entrypoint.sh
ENTRYPOINT ["/src/entrypoint.sh"]
