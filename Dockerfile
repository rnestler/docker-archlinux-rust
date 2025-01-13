FROM archlinux:latest
RUN pacman --noconfirm -Sy rustup gcc pkg-config sudo \
    && rm /var/lib/pacman/sync/* \
    && rm /var/cache/pacman/pkg/*

# Add a builder user since makepkg cannot (and should not) be run as root
RUN  useradd -m builder \
  && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder

ARG RUST_VERSION=stable
RUN rustup install --profile minimal $RUST_VERSION

ENV PATH="/root/.cargo/bin:${PATH}"
ENV RUSTUP_HOME="/root/.rustup"
