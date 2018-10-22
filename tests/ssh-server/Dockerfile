FROM alpine:3.6

RUN apk update && apk add openssh tcpdump
# whireshak
RUN apk add libcap shadow
COPY sshd_config /etc/ssh/sshd_config
RUN /usr/bin/ssh-keygen -A
RUN addgroup -S mole && adduser -S mole -G mole -D -s /bin/ash && passwd -u mole
RUN mkdir -p /home/mole/.ssh && chown mole:mole /home/mole/.ssh

CMD /usr/sbin/sshd -D
