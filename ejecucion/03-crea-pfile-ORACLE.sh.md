## 03-crea-pfile-ORACLE.sh

```shellsession
[oracle@h2-bda-agn container]$ sh 03-crea-pfile-ORACLE.sh 
Validando que el usuario de ejecución sea oracle
Creando un archivo de parámetros básico
Listo
Comprobando la existencia y contenido del PFILE

db_name=free
memory_target=768M
memory_max_target=2048M
control_files=('/unam/bda/disks/d01/app/oracle/oradata/FREE/control01.ctl','/unam/bda/disks/d02/app/oracle/oradata/FREE/control02.ctl','/unam/bda/disks/d03/app/oracle/oradata/FREE/control03.ctl')
db_domain=fi.unam
enable_pluggable_database=true


```
