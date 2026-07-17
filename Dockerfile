FROM amazonlinux:2023.12.20260706.1

RUN dnf -y update && \
    dnf clean all
