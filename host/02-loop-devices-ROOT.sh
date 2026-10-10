#!/bin/bash
#@Autor(es):       Jorge Rodríguez
#@Fecha creación:  dd/mm/yyyy
#@Descripción:     Crea y monta los loop devices simulados para la práctica 05
. /etc/profile.d/99-custom-env.sh
# set -euo pipefail hace que el script se detenga si ocurre un error, si se usa
# una variable no definida, o si un comando ejecutado vía pipe falla.
set -euo pipefail

echo "Validando que el usuario de ejecución sea root"
if [ "$(id -u)" -ne 0 ]; then
  echo "Este script debe ser ejecutado como root"
  exit 1
fi

echo "Validando que el script se ejecute en la máquina host, no en el contenedor"
if [[ "$(hostname)" =~ h2-bda-[a-z]+\.fi\.unam ]]; then
  echo "Este script debe ejecutarse en la máquina host (o en la VM de Colima para" \
    "macOS), no dentro del contenedor"
  exit 1
fi

IMG_DIR="${UNAM_HOME}/bda/disk-images"
MOUNT_DIR="${UNAM_HOME}/bda/disks"

echo "Verificando si el directorio ${IMG_DIR} contiene archivos de imagen de disco"
if [ -d "${IMG_DIR}" ] && [ "$(ls -A "${IMG_DIR}")" ]; then
  echo "El directorio ${IMG_DIR} ya contiene archivos de imagen de disco"
  read -p "¿Desea continuar y sobrescribir los archivos existentes? (s/n): " respuesta
  if [[ ! "${respuesta}" =~ ^[Ss]$ ]]; then
    echo "Saliendo del script."
    exit 0
  fi

  echo "Desmontando puntos de montaje y liberando loop devices existentes"
  for n in 1 2 3; do
    punto_montaje="${MOUNT_DIR}/d0${n}"
    if findmnt "${punto_montaje}" >/dev/null 2>&1; then
      echo "Desmontando ${punto_montaje}"
      umount "${punto_montaje}"
    fi

    #liberar loop device asociado a disk${n}.img si existe
    loop_dev="$(losetup -j "${IMG_DIR}/disk${n}.img" | cut -d: -f1)"
    if [ -n "${loop_dev}" ]; then
      echo "Liberando ${loop_dev} (asociado a disk${n}.img)"
      losetup -d "${loop_dev}"
    fi
  done
fi

echo "Creando ${IMG_DIR} y ${MOUNT_DIR} si no existen"
mkdir -p "${IMG_DIR}"
mkdir -p "${MOUNT_DIR}"

cd "${IMG_DIR}"

for n in 1 2 3; do
  echo "Creando disk${n}.img de 1 Gb"
  dd if=/dev/zero of="disk${n}.img" bs=100M count=10
done

echo "Mostrando la creación de los archivos"
du -sh disk*.img

for n in 1 2 3; do
  if losetup -j "disk${n}.img" | grep -q "disk${n}.img"; then
    echo "disk${n}.img ya tiene un loop device asociado, se omite"
  else
    echo "Creando loop device para disk${n}.img"
    losetup -fP "disk${n}.img"
  fi
done

echo "Mostrando la creación de loop devices"
losetup -a

for n in 1 2 3; do
  echo "Dando formato ext4 a disk${n}.img"
  mkfs.ext4 "disk${n}.img"
done

echo "Creando los directorios donde los loop devices serán montados"
for n in 01 02 03; do
  mkdir -p "${MOUNT_DIR}/d${n}"
done

