#!/bin/bash
#@Autor(es):       Jorge Rodríguez
#@Fecha creación:  dd/mm/yyyy
#@Descripción:     Creación del archivo de passwords

# set -euo pipefail hace que el script se detenga si ocurre un error, si se usa
# una variable no definida, o si un comando ejecutado vía pipe falla.
set -euo pipefail

## Carga de variables de entorno segura
ENV_FILE="/etc/profile.d/99-custom-env.sh"

if [ -f "$ENV_FILE" ]; then
  . "$ENV_FILE"
else
  echo "Error: El archivo de entorno $ENV_FILE no existe en este sistema." >&2
  exit 1
fi

if [ -z "${ORACLE_HOME:-}" ]; then
  echo "Error: La variable ORACLE_HOME no está definida o está vacía tras cargar el entorno." >&2
  exit 1
fi

echo "Validando que el usuario de ejecución sea oracle"
if [ "$(whoami)" != "oracle" ]; then
  echo "Este script debe ser ejecutado como oracle"
  exit 1
fi

echo "Proceso de creación del archivo de passwords"

echo "1. Configurando ORACLE_SID"
export ORACLE_SID=free
echo "ORACLE_SID: ${ORACLE_SID}"

PWD_FILE="${ORACLE_HOME}/dbs/orapw${ORACLE_SID}"

echo "2. Creando un archivo de passwords, usar como password Hola1234*"
if [ -f "${PWD_FILE}" ]; then
  read -p "El archivo de passwords ya existe, [enter] para sobrescribir"
fi

# El password debe tener al menos 8 caracteres, incluyendo letras y caracteres
# especiales, y no debe contener el nombre de usuario. Ejemplo: Hola1234*
orapwd FILE="${PWD_FILE}" \
  PASSWORD='Hola1234*' \
  FORCE=Y \
  FORMAT=12.2

echo "Comprobando la creación del archivo"
ls -l "${PWD_FILE}"

