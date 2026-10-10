## svg-05-main-enc.sh

```shellsession
[alicia@h2-bda-agn 05]$ sh runval.sh 
Validador Práctica 05
=====================================================================
      Validación de resultados 📋 (Tomar captura desde aquí)
=====================================================================
Fecha ............................. 2026-10-09 19:09:23
Usuario ........................... alicia
Hostname .......................... h2-bda-agn.fi.unam
Asignatura ........................ BDA
Semestre .......................... 2027-1
Práctica .......................... 05
=====================================================================


✅ [PASS] 01 - Nombre de hostname correcto: Hostname: h2-bda-agn.fi.unam
✅ [PASS] 02 - Usuario de ejecución distinto a oracle y root: Usuario de ejecución: alicia
✅ [PASS] 03 - Existencia de la variable UNAM_HOME: Variable UNAM_HOME encontrada: /unam
✅ [PASS] 04 - Existencia del directorio /unam/bda: Directorio /unam/bda encontrado
✅ [PASS] 05 - Existencia de disk1.img: Archivo /unam/bda/disk-images/disk1.img encontrado
✅ [PASS] 06 - Existencia de disk2.img: Archivo /unam/bda/disk-images/disk2.img encontrado
✅ [PASS] 07 - Existencia de disk3.img: Archivo /unam/bda/disk-images/disk3.img encontrado
✅ [PASS] 08 - Punto de montaje /unam/bda/disks/d01: Punto de montaje /unam/bda/disks/d01 encontrado
✅ [PASS] 09 - Punto de montaje /unam/bda/disks/d02: Punto de montaje /unam/bda/disks/d02 encontrado
✅ [PASS] 10 - Punto de montaje /unam/bda/disks/d03: Punto de montaje /unam/bda/disks/d03 encontrado
✅ [PASS] 11 - ORACLE_SID válido: ORACLE_SID: free
✅ [PASS] 12 - Existencia del archivo de passwords: Archivo de passwords /opt/oracle/product/23ai/dbhomeFree/dbs/orapwfree encontrado
✅ [PASS] 13 - Existencia del archivo de parámetros: Archivo de parámetros /opt/oracle/product/23ai/dbhomeFree/dbs/initfree.ora encontrado
✅ [PASS] 14 - Parámetro db_name=free: Parámetro db_name=free configurado correctamente
✅ [PASS] 15 - Parámetro memory_target=768M: Parámetro memory_target=768M configurado correctamente
✅ [PASS] 16 - Parámetro memory_max_target=2048M: Parámetro memory_max_target=2048M configurado correctamente
✅ [PASS] 17 - Parámetro control_files (control01.ctl): Ruta /unam/bda/disks/d01/app/oracle/oradata/FREE/control01.ctl encontrada en control_files
✅ [PASS] 18 - Parámetro control_files (control02.ctl): Ruta /unam/bda/disks/d02/app/oracle/oradata/FREE/control02.ctl encontrada en control_files
✅ [PASS] 19 - Parámetro control_files (control03.ctl): Ruta /unam/bda/disks/d03/app/oracle/oradata/FREE/control03.ctl encontrada en control_files
✅ [PASS] 20 - Parámetro db_domain=fi.unam: Parámetro db_domain=fi.unam configurado correctamente
✅ [PASS] 21 - Parámetro enable_pluggable_database=true: Parámetro enable_pluggable_database=true configurado correctamente

🏆 RESUMEN: 21/21 validaciones correctas
FVH: d9f3beb0e7a298f8c4468b8d2fc5a6b304989f1b73b08978598dd74b041526dc
================== : Fin de captura : =======================



```
