ARG ELASTIC_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

USER root
# Add healthcheck
COPY health-check.sh .
RUN chmod +x health-check.sh
USER elasticsearch:root

HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD sh ./health-check.sh

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
#RUN elasticsearch-plugin install --batch repository-s3