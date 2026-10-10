## Practica 5

# HOST

## 01-crea-contenedor-ADMIN-DOCKER.sh

Crea el segundo contenedor

ejecutar

```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sh 01-crea-contenedor-ADMIN-DOCKER.sh 
```

## Crear los accesos directos

en ~/.bashrc

```bash
alias dockerBda2='docker start c2-bda-<iniciales> && docker attach c2-bda-<iniciales>'​
alias dockerBda2T='docker exec -it c2-bda-<iniciales> bash'
## caso podman
alias dockerBda1='podman container start c2-bda-mqr && podman exec -u root -it c2-bda-mqr bash -l'
alias dockerBda1T='podman exec -it -u martin c2-bda-mqr bash -l'
```

## 02-loop-devices-ROOT.sh

ejecutar

```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sudo sh 02-loop-devices-ROOT.sh 
```

## 03-modifica-fstab-ROOT.sh

Crea las entradas necesarias en /etc/fstab para montar los loop devices

ejecutar

```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sudo sh 03-modifica-fstab-ROOT.sh 
```

Vedificar que  los dispositovos esten montados

```shellsession
df -h
```

# Container

## 01-update-99-custom-env-ROOT.sh

Ejecutar

```shellsession
[martin@h2-bda-mqr container]$ sudo sh 01-update-99-custom-env-ROOT.sh 
```

## 02-crea-pwfile-ORACLE.sh

Ejecutar

```shellsession
[oracle@h2-bda-mqr container]$ sh 02-crea-pwfile-ORACLE.sh 
```

## 03-crea-pfile-ORACLE.sh

Ejecutar

```shellsession
[oracle@h2-bda-mqr container]$ sh 03-crea-pfile-ORACLE.sh 
```

# Validador

En el contenedor

## svg-05-main-body-enc.sh

Ejecutar el script auxiliar runval.sh

```shellsession
[martin@h2-bda-mqr 05]$ sh runval.sh 
```

[Salida Valoidador](ejecucion/svg-05-main-enc.sh.md)

El archivo de salida del validador se descarta usando .gitignore ya que cambia con cada ejecucion del validador

Una copia de una ejecucioin se guarda en ejecucion/p05-output.txt.txt
