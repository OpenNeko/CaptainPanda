#!/bin/sh

# Initializing
NICK="CaptainPanda"
IDENT="CaptainPanda"
PORT="6667"
IRCNAME="The Panda Bot"
SERVER="irc.irchighway.net"
CHANNEL="#openneko"

# Connecting
exec 3>/dev/tcp/${SERVER}/${PORT}
exec 0<&3
echo "USER ${IDENT} localhost ${SERVER} :${IRCNAME}" >&3
echo "NICK ${NICK}" >&3
echo "JOIN ${CHANNEL}" >&3

# Reading
while true
  do
    read LOG || break
    echo $LOG
  done

