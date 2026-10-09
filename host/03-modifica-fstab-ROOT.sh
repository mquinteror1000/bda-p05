#!/bin/bash
# set -euo pipefail hace que el script se detenga si ocurre un error
set -euo pipefail

echo "Validando que el usuario de ejecución sea root"
if [ "$(id -u)" -ne 0 ]; then
  echo "Este script debe ser ejecutado como root"
  exit 1
fi

## Carga de variables de entorno segura
ENV_FILE="/etc/profile.d/99-custom-env.sh"

if [ -f "$ENV_FILE" ]; then
  . "$ENV_FILE"
else
  echo "Error: El archivo de entorno $ENV_FILE no existe en este sistema." >&2
  exit 1
fi

if [ -z "${UNAM_HOME:-}" ]; then
  echo "Error: La variable UNAM_HOME no está definida o está vacía tras cargar el entorno." >&2
  exit 1
fi

FSTAB_FILE="/etc/fstab"
MARKER_BEGIN="###BEGIN_BDA_PRAC05"

echo "Verificando si las entradas ya existen en $FSTAB_FILE"
# grep -qF busca la cadena exacta y silenciosamente (-q). 
# Si la encuentra, retorna verdadero.
if grep -qF "$MARKER_BEGIN" "$FSTAB_FILE"; then
  echo "Las entradas delimitadas por $MARKER_BEGIN ya existen."
  echo "No se realizaron cambios (Idempotencia exitosa)."
  exit 0
fi

echo "Haciendo un respaldo de seguridad en ${FSTAB_FILE}.bak"
cp "$FSTAB_FILE" "${FSTAB_FILE}.bak"

echo "Agregando las entradas al final de $FSTAB_FILE..."

# El uso de EOF sin comillas permite que las variables como ${UNAM_HOME}
# se expandan (sustituyan por la ruta real) antes de guardarse en el archivo.
# fstab no entiende variables de bash, por lo que necesita las rutas absolutas.
cat << EOF >> "$FSTAB_FILE"

###BEGIN_BDA_PRAC05
${UNAM_HOME}/bda/disk-images/disk1.img  ${UNAM_HOME}/bda/disks/d01  ext4  loop,defaults  0  0
${UNAM_HOME}/bda/disk-images/disk2.img  ${UNAM_HOME}/bda/disks/d02  ext4  loop,defaults  0  0
${UNAM_HOME}/bda/disk-images/disk3.img  ${UNAM_HOME}/bda/disks/d03  ext4  loop,defaults  0  0
###END_BDA_PRAC05
EOF

echo "Entradas agregadas correctamente a $FSTAB_FILE"
echo "ejecutanto: mount -a"
mount -a
echo "ejecutando: systemctl daemon-reload"
systemctl daemon-reload
echo "mostrando los dispositivos montados"
df -h

