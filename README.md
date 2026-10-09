## Practica 5

# HOST

## host/01-crea-contenedor-ADMIN-DOCKER.sh

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
