## 01-update-99-custom-env-ROOT.sh

```shellsession
[alicia@h2-bda-agn container]$ sudo sh 01-update-99-custom-env-ROOT.sh 
[sudo] password for alicia: 
Cambiando dueño y grupo de /opt/oracle/oradata a oracle:oinstall...
Permisos actualizados.
Contenido actual de /etc/profile.d/99-custom-env.sh

# Variables de entorno Oracle - generadas automáticamente
export ORACLE_DOCKER_INSTALL=true
export UNAM_HOME=/unam
export ORACLE_HOSTNAME=h2-bda-mqr.fi.unam
export ORACLE_BASE=/opt/oracle
export ORACLE_HOME=/opt/oracle/product/23ai/dbhomeFree
export ORA_INVENTORY=/opt/oracle/oraInventory
export ORACLE_SID=free
export NLS_LANG=American_America.AL32UTF8
export PATH=${ORACLE_HOME}/bin:$PATH
#export LD_LIBRARY_PATH=${ORACLE_HOME}/lib:${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=/opt/oracle/product/23ai/dbhomeFree/lib:
alias sqlplus='rlwrap sqlplus'
[alicia@h2-bda-agn container]$ 

```
