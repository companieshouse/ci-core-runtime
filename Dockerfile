FROM amazonlinux:2023.12.20261102.0

RUN dnf -y update && \
    dnf clean all
