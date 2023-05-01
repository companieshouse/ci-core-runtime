FROM amazonlinux:2023

RUN dnf -y install aws-cli \
    && dnf clean all