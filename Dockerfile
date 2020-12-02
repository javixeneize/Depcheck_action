FROM owasp/dependency-check
USER root
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
