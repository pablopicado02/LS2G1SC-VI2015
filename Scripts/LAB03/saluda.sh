#!/bin/bash
if [ $# == 0 ]
then 
 echo "Debe usar un parámetro posicional"
else
   if [ $1== "Pablo"]
   then  
    echo "Hola Pablo"
   elif [ $1 == "nadie"]
   then
    echo "No puedo saludar a nadie"
   else
     echo "Quién eres????"
     read nombre
     echo "Hola $nombre"
   fi
fi
