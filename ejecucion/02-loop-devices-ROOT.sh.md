## 02-loop-devices-ROOT.sh
```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sudo sh 02-loop-devices-ROOT.sh 
[sudo] password for martin: 
Validando que el usuario de ejecución sea root
Validando que el script se ejecute en la máquina host, no en el contenedor
Verificando si el directorio /unam/bda/disk-images contiene archivos de imagen de disco
Creando /unam/bda/disk-images y /unam/bda/disks si no existen
Creando disk1.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 0.364119 s, 2.9 GB/s
Creando disk2.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 2.24318 s, 467 MB/s
Creando disk3.img de 1 Gb
10+0 records in
10+0 records out
1048576000 bytes (1.0 GB, 1000 MiB) copied, 0.653976 s, 1.6 GB/s
Mostrando la creación de los archivos
1000M	disk1.img
1000M	disk2.img
1000M	disk3.img
Creando loop device para disk1.img
Creando loop device para disk2.img
Creando loop device para disk3.img
Mostrando la creación de loop devices
/dev/loop1: [0038]:3107003 (/var/lib/snapd/snaps/core24_1643.snap)
/dev/loop19: [0038]:4018950 (/unam/bda/disk-images/disk3.img)
/dev/loop17: [0038]:4018945 (/unam/bda/disk-images/disk1.img)
/dev/loop8: [0038]:3817870 (/var/lib/snapd/snaps/core20_2922.snap)
/dev/loop15: [0038]:3569872 (/var/lib/snapd/snaps/modelio_50.snap)
/dev/loop6: [0038]:3106829 (/var/lib/snapd/snaps/snapd_27710.snap)
/dev/loop13: [0038]:3107111 (/var/lib/snapd/snaps/bare_5.snap)
/dev/loop4: [0038]:3107182 (/var/lib/snapd/snaps/gnome-46-2404_164.snap)
/dev/loop11: [0038]:3107097 (/var/lib/snapd/snaps/mesa-2404_1839.snap)
/dev/loop2: [0038]:3569863 (/var/lib/snapd/snaps/core18_3084.snap)
/dev/loop0: [0038]:3504048 (/var/lib/snapd/snaps/modelio_48.snap)
/dev/loop18: [0038]:4018949 (/unam/bda/disk-images/disk2.img)
/dev/loop9: [0038]:3818063 (/var/lib/snapd/snaps/marktext_9.snap)
/dev/loop16: [0038]:3818065 (/var/lib/snapd/snaps/gnome-3-38-2004_143.snap)
/dev/loop7: [0038]:3107180 (/var/lib/snapd/snaps/gtk-common-themes_1535.snap)
/dev/loop14: [0038]:3817283 (/var/lib/snapd/snaps/snapd_28254.snap)
/dev/loop5: [0038]:3570219 (/var/lib/snapd/snaps/arduino_85.snap)
/dev/loop12: [0038]:3570220 (/var/lib/snapd/snaps/gnome-3-28-1804_198.snap)
/dev/loop3: [0038]:3107095 (/var/lib/snapd/snaps/rpi-imager_916.snap)
/dev/loop10: [0038]:3503872 (/var/lib/snapd/snaps/core24_2124.snap)
Dando formato ext4 a disk1.img
mke2fs 1.47.3 (8-Jul-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: d535ca63-ef59-45fa-98d9-dc57bf37ff21
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Dando formato ext4 a disk2.img
mke2fs 1.47.3 (8-Jul-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: fa1bc576-f167-443a-b7c9-4e95927ac1fc
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Dando formato ext4 a disk3.img
mke2fs 1.47.3 (8-Jul-2025)
Discarding device blocks: done                            
Creating filesystem with 256000 4k blocks and 64000 inodes
Filesystem UUID: 02a1791b-0c78-47cb-90e3-97a39f9ded29
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

Creando los directorios donde los loop devices serán montados

```

