#!/bin/bash

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
Proceso:$proceso
--------
Fecha:$(date +"%d|%m|%y")  Hora:$(date +"%X")    
Usuario:$USER
Estado:$estado
---------------------------------------------
">> "Registro_de_procesos"
echo "Reporte agregado correctamente"
