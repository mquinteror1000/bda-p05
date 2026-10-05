## Practica 5

## host/s-01-crea-contenedor-admin.sh

Crea el segundo contenedor

ejecutar

```shellsession
martin@pc-bda-mqr:/unam/bda/practicas/05/host$ sh s-01-crea-contenedor-admin.sh 
```

## Crear los accesos directos

```bash
alias dockerBda2='docker start c2-bda-<iniciales> && docker attach c2-bda-<iniciales>'​
alias dockerBda2T='docker exec -it c2-bda-<iniciales> bash'
## caso:w
podman
alias dockerBda1='podman container start c2-bda-mqr && podman exec -u root -it c2-bda-mqr bash -l'
alias dockerBda1T='podman exec -it -u martin c2-bda-mqr bash -l'
```
