## 03-modifica-fstab-ROOT.sh


### La primer vez
```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh 
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
Filesystem                 Size  Used Avail Use% Mounted on
udev                       7.7G     0  7.7G   0% /dev
tmpfs                      1.6G  2.2M  1.6G   1% /run
efivarfs                   154K   65K   85K  44% /sys/firmware/efi/efivars
/dev/mapper/l560--vg-root   97G   32G   61G  34% /
tmpfs                      7.8G   15M  7.8G   1% /dev/shm
tmpfs                      5.0M  8.0K  5.0M   1% /run/lock
tmpfs                      1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
/dev/loop3                  64M   64M     0 100% /snap/core20/2922
/dev/loop4                 128K  128K     0 100% /snap/bare/5
/dev/loop2                 511M  511M     0 100% /snap/code/265
/dev/loop0                 106M  106M     0 100% /snap/core/17292
/dev/loop1                 518M  518M     0 100% /snap/code/267
/dev/loop5                  67M   67M     0 100% /snap/core24/2124
/dev/loop6                 350M  350M     0 100% /snap/gnome-3-38-2004/143
/dev/loop7                 145M  145M     0 100% /snap/marktext/9
/dev/loop9                  23M   23M     0 100% /snap/rclone/605
tmpfs                      7.8G   24K  7.8G   1% /tmp
/dev/loop10                 45M   45M     0 100% /snap/snapd/28254
/dev/loop8                 615M  615M     0 100% /snap/gnome-46-2404/164
/dev/loop12                 92M   92M     0 100% /snap/gtk-common-themes/1535
/dev/mapper/l560--vg-home  110G  3.9G  101G   4% /home
/dev/loop13                 51M   51M     0 100% /snap/snapd/27738
/dev/loop11                616M  616M     0 100% /snap/gnome-46-2404/168
/dev/loop14                1.2G  1.2G     0 100% /snap/libreoffice/377
/dev/loop15                402M  402M     0 100% /snap/mesa-2404/1839
/dev/sda2                  944M  461M  418M  53% /boot
/dev/sda1                  975M  9.1M  966M   1% /boot/efi
tmpfs                      1.6G  124K  1.6G   1% /run/user/112
tmpfs                      1.6G  840K  1.6G   1% /run/user/1000
overlay                     97G   32G   61G  34% /var/lib/docker/rootfs/overlayfs/915b30cf2eb0788881c7b5757d5cf7c40d8bff74b68e4d0c4de2a2db7dde4123
/dev/loop16                966M  272K  900M   1% /unam/bda/disks/d01
/dev/loop17                966M  272K  900M   1% /unam/bda/disks/d02
/dev/loop18                966M  272K  900M   1% /unam/bda/disks/d03

```

### otras ocaciones
```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh
Validando que el usuario de ejecución sea root
Verificando si las entradas ya existen en /etc/fstab
Las entradas delimitadas por ###BEGIN_BDA_PRAC05 ya existen.
No se realizaron cambios (Idempotencia exitosa).
martin@pc-bda-mqr:/unam/bda/practicas/05/host$

```
