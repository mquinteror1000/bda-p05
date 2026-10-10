## 03-modifica-fstab-ROOT.sh


### La primer vez
```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh 
Validando que el usuario de ejecución sea root
Verificando si las entradas ya existen en /etc/fstab
Haciendo un respaldo de seguridad en /etc/fstab.bak
Agregando las entradas al final de /etc/fstab...
Entradas agregadas correctamente a /etc/fstab
ejecutanto: mount -a
mount: (hint) your fstab has been modified, but systemd still uses
       the old version; use 'systemctl daemon-reload' to reload.
ejecutando: systemctl daemon-reload
mostrando los dispositivos montados
Filesystem      Size  Used Avail Use% Mounted on
/dev/dm-0       236G  136G   98G  59% /
devtmpfs        7.6G     0  7.6G   0% /dev
tmpfs           7.7G   15M  7.7G   1% /dev/shm
efivarfs        246K   56K  185K  24% /sys/firmware/efi/efivars
tmpfs           3.1G  2.5M  3.1G   1% /run
none            1.0M     0  1.0M   0% /run/credentials/systemd-cryptsetup@luks\x2dbd5be354\x2d2caf\x2d4324\x2d8ca5\x2d15ccc6496931.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/dm-0       236G  136G   98G  59% /home
tmpfs           7.7G   20M  7.7G   1% /tmp
/dev/nvme0n1p2  2.0G  513M  1.3G  29% /boot
/dev/loop13     128K  128K     0 100% /var/lib/snapd/snap/bare/5
/dev/loop3      137M  137M     0 100% /var/lib/snapd/snap/rpi-imager/916
/dev/loop0      440M  440M     0 100% /var/lib/snapd/snap/modelio/48
/dev/loop8       64M   64M     0 100% /var/lib/snapd/snap/core20/2922
/dev/loop9      145M  145M     0 100% /var/lib/snapd/snap/marktext/9
/dev/loop7       92M   92M     0 100% /var/lib/snapd/snap/gtk-common-themes/1535
/dev/loop11     402M  402M     0 100% /var/lib/snapd/snap/mesa-2404/1839
/dev/loop10      67M   67M     0 100% /var/lib/snapd/snap/core24/2124
/dev/loop12     165M  165M     0 100% /var/lib/snapd/snap/gnome-3-28-1804/198
/dev/loop2       56M   56M     0 100% /var/lib/snapd/snap/core18/3084
/dev/loop15     440M  440M     0 100% /var/lib/snapd/snap/modelio/50
/dev/loop16     350M  350M     0 100% /var/lib/snapd/snap/gnome-3-38-2004/143
/dev/loop6       51M   51M     0 100% /var/lib/snapd/snap/snapd/27710
/dev/loop1       67M   67M     0 100% /var/lib/snapd/snap/core24/1643
/dev/loop14      45M   45M     0 100% /var/lib/snapd/snap/snapd/28254
/dev/loop5      196M  196M     0 100% /var/lib/snapd/snap/arduino/85
/dev/loop4      615M  615M     0 100% /var/lib/snapd/snap/gnome-46-2404/164
/dev/nvme0n1p1  599M   21M  579M   4% /boot/efi
tmpfs           1.6G  8.9M  1.6G   1% /run/user/1000
overlay         236G  136G   98G  59% /var/lib/docker/rootfs/overlayfs/91e430d716261f2e88f2cb9113933463b67ca1967aa30d2e29b7204ba2d65fbd
tmpfs           1.6G   48K  1.6G   1% /run/user/0
/dev/loop17     966M  272K  900M   1% /unam/bda/disks/d01
/dev/loop18     966M  272K  900M   1% /unam/bda/disks/d02
/dev/loop19     966M  272K  900M   1% /unam/bda/disks/d03

```

### otras ocaciones
```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh 
Validando que el usuario de ejecución sea root
Verificando si las entradas ya existen en /etc/fstab
Las entradas delimitadas por ###BEGIN_BDA_PRAC05 ya existen.
No se realizaron cambios (Idempotencia exitosa).

```
