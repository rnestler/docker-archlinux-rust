FROM archlinux:latest
RUN pacman --noconfirm -Sy rustup gcc pkg-config \
    && rm /var/lib/pacman/sync/* \
    && rm /var/cache/pacman/pkg/*

ARG RUST_VERSION=stable
RUN rustup install --profile minimal $RUST_VERSION

ENV PATH="/root/.cargo/bin:${PATH}"
ENV RUSTUP_HOME="/root/.rustup"
