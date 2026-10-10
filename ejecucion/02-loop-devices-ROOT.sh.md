## 02-loop-devices-ROOT.sh
```shellsession

martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sudo sh 02-loop-devices-ROOT.sh 
[sudo] password for martin: 
Validando que el usuario de ejecución sea root
Validando que el script se ejecute en la máquina host, no en el contenedor
02-loop-devices-ROOT.sh: 17: [[: not found
Verificando si el directorio /unam/bda/disk-images contiene archivos de imagen de disco
El directorio /unam/bda/disk-images ya contiene archivos de imagen de disco
¿Desea continuar y sobrescribir los archivos existentes? (s/n): s
02-loop-devices-ROOT.sh: 30: [[: not found
Desmontando puntos de montaje y liberando loop devices existentes
Liberando /dev/loop16 (asociado a disk1.img)
Liberando /dev/loop17 (asociado a disk2.img)
Liberando /dev/loop18 (asociado a disk3.img)
Creando /unam/bda/disk-images y /unam/bda/disks si no existen
Creando disk1.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 2.7223 s, 385 MB/s
Creando disk2.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 2.76866 s, 379 MB/s
Creando disk3.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 2.68682 s, 390 MB/s
Mostrando la creación de los archivos
1001M	disk1.img
1001M	disk2.img
1001M	disk3.img
disk1.img ya tiene un loop device asociado, se omite
disk2.img ya tiene un loop device asociado, se omite
disk3.img ya tiene un loop device asociado, se omite
Mostrando la creación de loop devices
/dev/loop1: [65024]:1221 (/var/lib/snapd/snaps/code_267.snap)
/dev/loop17: [65024]:132282 (/unam/bda/disk-images/disk2.img)
/dev/loop8: [65024]:1006 (/var/lib/snapd/snaps/gnome-46-2404_164.snap)
/dev/loop15: [65024]:992 (/var/lib/snapd/snaps/mesa-2404_1839.snap)
/dev/loop6: [65024]:829 (/var/lib/snapd/snaps/gnome-3-38-2004_143.snap)
/dev/loop13: [65024]:744 (/var/lib/snapd/snaps/snapd_27738.snap)
/dev/loop4: [65024]:838 (/var/lib/snapd/snaps/bare_5.snap)
/dev/loop11: [65024]:1202 (/var/lib/snapd/snaps/gnome-46-2404_168.snap)
/dev/loop2: [65024]:748 (/var/lib/snapd/snaps/code_265.snap)
/dev/loop0: [65024]:734 (/var/lib/snapd/snaps/core_17292.snap)
/dev/loop18: [65024]:132283 (/unam/bda/disk-images/disk3.img)
/dev/loop9: [65024]:23 (/var/lib/snapd/snaps/rclone_605.snap)
/dev/loop16: [65024]:132281 (/unam/bda/disk-images/disk1.img)
/dev/loop7: [65024]:837 (/var/lib/snapd/snaps/marktext_9.snap)
/dev/loop14: [65024]:1005 (/var/lib/snapd/snaps/libreoffice_377.snap)
/dev/loop5: [65024]:915 (/var/lib/snapd/snaps/core24_2124.snap)
/dev/loop12: [65024]:853 (/var/lib/snapd/snaps/gtk-common-themes_1535.snap)
/dev/loop3: [65024]:818 (/var/lib/snapd/snaps/core20_2922.snap)
/dev/loop10: [65024]:1222 (/var/lib/snapd/snaps/snapd_28254.snap)
Dando formato ext4 a disk1.img
mke2fs 1.47.2 (1-Jan-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: dc2d41bb-0fc7-430c-b899-cdfabdb09e47
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Dando formato ext4 a disk2.img
mke2fs 1.47.2 (1-Jan-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: 53479e69-e010-42c0-9fc1-2e0376426661
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Dando formato ext4 a disk3.img
mke2fs 1.47.2 (1-Jan-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: 80775fe5-d7f5-49ce-b0ee-a581c03f47cd
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Creando los directorios donde los loop devices serán montados

```

