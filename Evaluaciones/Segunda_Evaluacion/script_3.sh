#!/bin/bash
#Cree un script que lea el nombre del equipo actual, la fecha y hora actual del sistema, limpie la pantalla y que use como el primer parámetro posicional la ruta del archivo a respaldar,  imprimirá el nombre del archivo que está siendo respaldado, el archivo será respaldado en la ruta actual con el formato de nombre: “nombre_original-nombre_de_equipo-fecha_y_hora_actual.bkp”.
#set -x 
clear
if [ $# = 0 ]; then
   echo "Dijite la ruta del archivo porfavor "
else
	archivo=$(basename $1)
	#Verificar si el archivo realmente existe en la ruta
        cat $archivo &> /dev/null 
	if [ $? = 1 ];then
	   echo "Corrija la ruta del archivo porfavor"
	else
	   echo "ruta correcta"
           archivo="$archivo-$HOSTNAME-$(date +"%Y|%m|%d-%X").bkp"
           touch $archivo
           echo "Archivo respladado con el nombre $archivo"
	fi

fi

