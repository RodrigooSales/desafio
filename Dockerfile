FROM docker-registry.dreads.bnb/ubuntu:latest

RUN apt-get update && apt-get install -y sed sysstat curl htop vim cron

WORKDIR /app
COPY script.sh .
RUN chmod +x script.sh

CMD ["./script.sh"]