FROM rust:1.46

WORKDIR /usr/src/app

ENV USER=dummy

RUN rustup default nightly && cargo init --bin --name dummy .

COPY Cargo.* ./

RUN cargo build

COPY . .

RUN cargo build

CMD ["cargo", "run"]