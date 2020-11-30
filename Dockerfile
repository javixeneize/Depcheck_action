FROM owasp/dependency-check
USER root
RUN mkdir /reports
RUN chown dependencycheck /reports
VOLUME /reports
USER dependencycheck
ENTRYPOINT ["/usr/share/dependency-check/bin/dependency-check.sh"]