FROM ubuntu:latest
RUN apt update -y && \
  apt upgrade -y && \
  apt install mingw-w64 -y && \
  apt install curl -y && \
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && \
  apt install python3 -y
