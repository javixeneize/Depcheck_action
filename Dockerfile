FROM owasp/dependency-check
USER root
RUN chown dependencycheck /src
USER dependencycheck
ENTRYPOINT ["/usr/share/dependency-check/bin/dependency-check.sh"]
