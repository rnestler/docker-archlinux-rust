FROM archlinux:latest
RUN ls -lh /var/lib/pacman/
RUN whoami
RUN mkdir -p /var/lib/pacman
RUN pacman -v --noconfirm -Sy rustup gcc pkg-config \
    && rm /var/lib/pacman/sync/* \
    && rm /var/cache/pacman/pkg/*

ARG RUST_VERSION=stable
RUN rustup install --profile minimal $RUST_VERSION

ENV PATH="/root/.cargo/bin:${PATH}"
