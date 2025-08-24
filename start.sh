#!/bin/bash

# Autentica no Ngrok
ngrok config add-authtoken 31jQBc5dpSbMfkvmyopvOSM6Z3X_7dGABE4CHqHUY7F7D9bsJ

# Inicia o túnel TCP em background
ngrok tcp 25565 > /dev/null &

# Inicia o servidor de Minecraft em primeiro plano
java -Xmx1024M -Xms1024M -jar server.jar nogui
