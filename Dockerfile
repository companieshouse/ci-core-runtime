FROM amazonlinux:2023.12.20261021.0

RUN dnf -y update && \
    dnf clean all && \
    d=/etc/pki/ca-trust/source/blocklist; [ -d $d ] || d=/etc/pki/ca-trust/source/blacklist \
    trust extract --overwrite --format=pem-bundle \
    --filter='pkcs11:object=Comodo%20AAA%20Services%20root;type=cert' \
    $d/Comodo_AAA_Services_root.pem && \
    trust extract --overwrite --format=pem-bundle \
    --filter='pkcs11:object=emSign%20ECC%20Root%20CA%20-%20G3;type=cert' \
    $d/emSign_ECC_Root_CA_-_G3.pem && \
    update-ca-trust
