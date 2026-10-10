#!/bin/bash
# @Autor         Jorge Rodriguez
# @Fecha         dd/mm/yyyy
# @Descripcion   Creación de un PFILE

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
  echo "Error: La variable ORACLE_HOME no está definida o está vacía tras cargar el entorno. Verificar existencia de 99-custom-env.sh" >&2
  exit 1
fi

echo "Validando que el usuario de ejecución sea oracle"
if [ "$(whoami)" != "oracle" ]; then
  echo "Este script debe ser ejecutado como oracle"
  exit 1
fi

echo "Creando un archivo de parámetros básico"
export ORACLE_SID=free
pfile="${ORACLE_HOME}/dbs/init${ORACLE_SID}.ora"

if [ -f "${pfile}" ]; then
  read -p "El archivo ${pfile} ya existe, [enter] para sobrescribir"
fi

echo \
"db_name=${ORACLE_SID}
memory_target=768M
memory_max_target=2048M
control_files=('/unam/bda/disks/d01/app/oracle/oradata/${ORACLE_SID^^}/control01.ctl','/unam/bda/disks/d02/app/oracle/oradata/${ORACLE_SID^^}/control02.ctl','/unam/bda/disks/d03/app/oracle/oradata/${ORACLE_SID^^}/control03.ctl')
db_domain=fi.unam
enable_pluggable_database=true
" > "${pfile}"

echo "Listo"
echo "Comprobando la existencia y contenido del PFILE"
echo ""
cat "${pfile}"

