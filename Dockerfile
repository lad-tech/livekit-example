FROM livekit/livekit-server:latest
LABEL authors="bibawork"

CMD mkdir /app
WORKDIR /app
COPY /src/init_script.sh .

RUN chmod +x ./init_script.sh

RUN ./init_script.sh

ENTRYPOINT [ "/livekit-server" ]

CMD ["--dev"]
