FROM brainboxdotcc/dpp:latest

WORKDIR /usr/src/himbot

COPY . .

WORKDIR /usr/src/himbot/build

RUN cmake ..
RUN make -j$(nproc)

ENTRYPOINT [ "/usr/src/himbot/build/himbot" ]
