FROM gliderlabs/alpine:latest
RUN adduser -D -H tftp
RUN apk-install subversion
RUN mkdir /svn
RUN svnadmin create /svn
RUN chown -R tftp /svn
VOLUME /svn
RUN mkdir /tftpboot
RUN svn checkout file:///svn /tftpboot
RUN chown -R tftp /tftpboot
VOLUME /tftpboot
WORKDIR /tftpboot
USER tftp
CMD ["echo", "TFTP data"]
