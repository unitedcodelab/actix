FROM rust:latest

WORKDIR /united-code-lab

COPY src ./src
COPY Cargo.toml Cargo.lock ./

RUN cargo install --path .
RUN cargo build --release
RUN cargo build

CMD ["cargo", "run", "--release"]
