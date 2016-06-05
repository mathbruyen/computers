FROM alpine:3.4

ADD nix-1.11.2-x86_64-linux.tar.bz2 /install

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN adduser -D nix
ENV USER=nix
RUN mkdir /nix && chown -R nix /nix
USER nix

RUN /install/*/install

RUN echo "source ~/.nix-profile/etc/profile.d/nix.sh" > /home/nix/.bashrc

CMD bash

WORKDIR /mnt
