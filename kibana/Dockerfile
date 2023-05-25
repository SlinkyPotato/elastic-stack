ARG ELASTIC_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana:${ELASTIC_VERSION}

USER root
RUN apt-get update
RUN apt-get -y install jq

# Add healthcheck
COPY health-check.sh .
RUN chmod +x health-check.sh

USER kibana

HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD sh ./health-check.sh

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>

