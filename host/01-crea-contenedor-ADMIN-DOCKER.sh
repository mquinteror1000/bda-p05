#!/bin/sh
#EDITAR
MATERIA='bda'
INICIALES='mqr'
BASE_IMAGE='ol-mqr:1.0'

NETWORK_NAME="${MATERIA}_network"
IP_DIR="172.22.0.12" # pra practica 5 es 12


VOLUME_NAME="v2-${MATERIA}-oradata-${INICIALES}"
# Verifica si el volumen existe antes de crearlo para no borrar datos
if docker volume inspect "${VOLUME_NAME}" >/dev/null 2>&1; then
    echo "[docker] El volumen '${VOLUME_NAME}' ya existe. Si de desea borrar: docker volume rm ${VOLUME_NAME}"
else
    docker volume create "${VOLUME_NAME}"
fi


CONTAINER_NAME="c2-${MATERIA}-${INICIALES}"
HOSTNAME="h2-${MATERIA}-${INICIALES}.fi.unam"

# Verificar UNAM_HOME
if [ -z "$UNAM_HOME" ]; then
  echo "Error: La variable UNAM_HOME no está definida."
  exit 1
fi

## Verificar que no exista ya el contenedor
if docker container inspect "$CONTAINER_NAME" > /dev/null 2>&1; then
    echo "[docker] ya existe $CONTAINER_NAME eliminalo manualmente: docker container rm ${CONTAINER_NAME}"
    exit 1
fi


## Crear el segundo contenedor
docker run -it \
  -v "${UNAM_HOME}:/unam" \
  -v "${VOLUME_NAME}:/opt/oracle/oradata" \
  --name "${CONTAINER_NAME}" \
  --hostname "${HOSTNAME}" \
  --network "${NETWORK_NAME}" \
  --ip "${IP_DIR}" \
  --expose 1521 \
  --shm-size=4gb \
  "${BASE_IMAGE}" bash
