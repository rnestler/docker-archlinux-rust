FROM archlinux:latest
RUN pacman --noconfirm -Sy rustup gcc pkg-config \
    && rm /var/lib/pacman/sync/* \
    && rm /var/cache/pacman/pkg/*
