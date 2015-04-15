FROM gliderlabs/alpine:latest
RUN adduser -D -H tftp
RUN apk-install tftp-hpa
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["--foreground", "--create", "--user", "tftp", "--secure", "/tftpboot"]
