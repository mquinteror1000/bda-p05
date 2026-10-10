## Practica 5

ALICIA

# HOST

## 01-crea-contenedor-ADMIN-DOCKER.sh

Crea el segundo contenedor

ejecutar

```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sh 01-crea-contenedor-ADMIN-DOCKER.sh 
```

## Crear los accesos directos

en ~/.bashrc

```bash
alias dockerBda2='docker container start c2-bda-agn && docker container attach c2-bda-agn'
alias dockerBda2T='docker container exec -it c2-bda-agn bash'
```

## 02-loop-devices-ROOT.sh

ejecutar

```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sudo sh 02-loop-devices-ROOT.sh 
```

## 03-modifica-fstab-ROOT.sh

Crea las entradas necesarias en /etc/fstab para montar los loop devices

ejecutar

```shellsession
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh 
```

Vedificar que  los dispositovos esten montados

```shellsession
df -h
```

# Container

## 01-update-99-custom-env-ROOT.sh

Ejecutar

```shellsession
[alicia@h2-bda-agn container]$ sudo sh 01-update-99-custom-env-ROOT.sh 
```

## 02-crea-pwfile-ORACLE.sh

Ejecutar

```shellsession
[oracle@h2-bda-agn container]$ sh 02-crea-pwfile-ORACLE.sh 
```

## 03-crea-pfile-ORACLE.sh

Ejecutar

```shellsession
[oracle@h2-bda-agn container]$ sh 03-crea-pfile-ORACLE.sh 
```

# Validador

Antes de correr el validador salir del contenedor y volver a iniciarlo<

```shellsession
[alicia@h2-bda-agn 05]$ exit
logout
bash-5.1# exit 
exit
martin@pc-bdx-mqr:~/unam/bda/practicas/05/host$ dockerBda2
c2-bda-agn
bash-5.1# su -l alicia 
Last login: Fri Oct  9 19:06:49 CST 2026 on pts/0
[alicia@h2-bda-agn ~]$
```

En el contenedor

## svg-05-main-body-enc.sh

Ejecutar el script auxiliar runval.sh

```shellsession
[martin@h2-bda-mqr 05]$ sh runval.sh 
```

[Salida Validador](ejecucion/svg-05-main-enc.sh.md)

El archivo de salida del validador se descarta usando .gitignore ya que cambia con cada ejecución del validador

Una copia de una ejecución se guarda en ejecucion/p05-output.txt.txt
