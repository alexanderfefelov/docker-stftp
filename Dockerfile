# Based on https://github.com/jumanjihouse/docker-tftp-hpa

# docker build -t alexanderfefelov/docker-stftp .
# docker run -d -p 69:69/udp -v /path/to/tftp:/tftpboot alexanderfefelov/docker-stftp
# modprobe nf_nat_tftp

FROM gliderlabs/alpine:latest

RUN mkdir /tftpboot

VOLUME /tftpboot

RUN apk-install tftp-hpa

EXPOSE 69/udp

RUN adduser -D tftp

ENTRYPOINT ["in.tftpd"]
CMD ["--foreground", "--create", "--user", "tftp", "--secure", "/tftpboot"]
