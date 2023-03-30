FROM amazonlinux:2023 as builder

WORKDIR /app

ONBUILD COPY --from=0 /tmp/app ./

ENTRYPOINT ["/app/app"]