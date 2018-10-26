from resin/rpi-raspbian:jessie

RUN apt update   && \
    apt upgrade -y && \
    apt install -y wget mosquitto

EXPOSE 1883

EXPOSE 9001

COPY docker-entrypoint.sh /

CMD ["mosquitto"]
