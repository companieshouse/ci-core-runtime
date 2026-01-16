FROM amazonlinux:2023.9.20251208.0

RUN dnf -y update && \
    dnf clean all
