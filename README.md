# docker-archlinux-rust

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
