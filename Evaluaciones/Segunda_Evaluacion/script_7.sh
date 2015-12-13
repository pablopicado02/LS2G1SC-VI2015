#!/bin/bash
#Cree un script que permita determinar si un determinado proceso está activo o no, deberá de generar un registro cada vez que se ejecute indicando, la fecha, el nombre del proceso y el estado (ACTIVO o INACTIVO).
echo "Dijite el nombre del proceso"
read proceso
pgrep $proceso &> /dev/null

  if [ $? = 1 ]; then
   estado="INACTIVO"
  else
   estado="ACTIVO"
  fi
#Se crea el reporte
echo "
       Reporte
      ---------

Fecha:$(date +"%d|%m|%y") 
User:$USER    
Proceso:$proceso
Estado:$estado
---------------------------
"> "Reporte-$proceso".txt
echo "Reporte creado correctamente"
