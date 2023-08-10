FROM redocly/cli

COPY LICENSE.md README.md /

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
