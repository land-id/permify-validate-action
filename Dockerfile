FROM ghcr.io/permify/permify:v1.2.2 as base

FROM ubuntu:22.04
COPY --from=base /usr/local/bin/permify /permify
RUN chmod +x /permify
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
