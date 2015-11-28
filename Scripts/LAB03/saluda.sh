#!/bin/bash
set -x
if [ $# == 0 ]
then 
 echo "Debe usar un parámetro posicional"
else
   nombre = "$1"
   nombre_limpio = $( echo $nombre | tr "[:upper:]" "[:lower:]")
   if [ $nombre_limpio == "Pablo" ]
   then  
    echo "Hola Pablo"
   elif [ $nombre_limpio == "nadie" ]
   then
    echo "No puedo saludar a nadie"
   else
     echo "Quién eres????"
     read nombre
     echo "Hola $nombre"
   fi
fi
