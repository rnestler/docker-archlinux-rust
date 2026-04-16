# docker-archlinux-rust

[![Docker Pulls](https://img.shields.io/docker/pulls/rnestler/archlinux-rust)](https://hub.docker.com/r/rnestler/archlinux-rust)
[![GitHub Repo](https://img.shields.io/badge/github-repo-blue?logo=github)](https://github.com/rnestler/docker-archlinux-rust)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/rnestler/docker-archlinux-rust/publish-docker-images.yml)

A Docker image based on archlinux with the rust tool-chain installed.

## Usage

The image has rustup installed and a version of Rust depending on the tag.

Use
```
docker pull rnestler/archlinux-rust
```
to get the latest stable Rust version.

## Tags

The image is tagged with the Rust release channel. It gets built regularly with
the following tags:

 * stable
 * beta
 * nightly
 * 1.x.y for the 3 most recent versions
