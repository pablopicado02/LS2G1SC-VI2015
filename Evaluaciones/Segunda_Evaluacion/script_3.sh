#!/bin/bash
#Cree un script que lea el nombre del equipo actual, la fecha y hora actual del sistema, limpie la pantalla y que use como el primer parámetro posicional la ruta del archivo a respaldar,  imprimirá el nombre del archivo que está siendo respaldado, el archivo será respaldado en la ruta actual con el formato de nombre: “nombre_original-nombre_de_equipo-fecha_y_hora_actual.bkp”.
#set -x 
clear
if [ $# = 0 ]; then
   echo "Dijite la ruta del archivo porfavor "
else
	archivo=$(basename $1)
	#Verificar si el archivo realmente existe en la ruta
	if [ -e "$archivo" ];then
         #Si el archivo existe, se crea en el formato indicado
	 echo "ruta correcta"
         archivo="$archivo-$HOSTNAME-$(date +"%Y|%m|%d-%X").bkp"
         touch $archivo
         #SE despliega el nombre del archivo respaldado
         echo "Archivo respaldado con el nombre $archivo"
       	
       else
         #Si no existe o la ruta es incorrecta envia el siguiente mensaje
	   echo "Corrija la ruta del archivo porfavor"
	fi

fi

