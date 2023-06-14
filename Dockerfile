FROM docker-registry.dreads.bnb/ubuntu:latest

RUN apt-get update && apt-get install -y sed

WORKDIR /app
COPY script.sh .
RUN chmod +x script.sh

CMD ["./system_info.sh"]