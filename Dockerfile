FROM ghcr.io/oracle/oci-cli:latest

USER root

RUN yum -y install jq

COPY oci-create oci-setup /usr/local/bin/

USER oracle

ENTRYPOINT []

CMD ["oci-create"]
