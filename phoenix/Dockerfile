FROM elixir:1.10-alpine

WORKDIR /usr/app/src

RUN set -xe && \
        mix local.hex --force && \
        mix local.rebar --force

COPY mix.* ./
RUN mix deps.get

COPY . .
RUN mix compile

EXPOSE 4000

CMD ["mix", "phx.server"]
