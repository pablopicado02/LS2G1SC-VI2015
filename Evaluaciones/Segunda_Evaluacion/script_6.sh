#!/bin/bash
#Cree un script que permita determinar si el usuario que ejecuta el script es “root” o si es un usuario que tiene privilegios de administrador.
clear
if [ $USER = "root" ]; then
echo "Eres Dios"
else
 #Verifica si pertenece al grupo de sudo
 groups | grep sudo &> /dev/null
 if [ $? = 0 ]; then
 echo "puede ejecutar sudo"
 else
 echo "no puede ejecutar sudo"
 fi
fi
