FROM mileschou/lapis:alpine

WORKDIR /usr/src/app

COPY . .

RUN moonc *.moon

CMD ["lapis", "server"]