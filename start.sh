#!/bin/bash

# Inicia o servidor de Minecraft em background
java -Xmx512M -Xms512M -jar server.jar nogui &

# Autentica no Ngrok
ngrok config add-authtoken 31jQBc5dpSbMfkvmyopvOSM6Z3X_7dGABE4CHqHUY7F7D9bsJ

# Cria túnel TCP na porta 25565
ngrok tcp 25565
