#!/bin/bash

if [ $# == 0 ]
then 
 echo "Debe usar un parámetro posicional"
else
   if [$1=="Pablo"]
   then  
    echo "Hola Pablo"
   else
     echo "Quién eres????"
     read nombre
     echo "Hola $nombre"
   fi
fi
