FROM itzg/minecraft-server

USER root
RUN apt update && apt install -y curl unzip
RUN curl -s https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok.zip \
    && unzip ngrok.zip \
    && mv ngrok /usr/local/bin \
    && rm ngrok.zip

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
