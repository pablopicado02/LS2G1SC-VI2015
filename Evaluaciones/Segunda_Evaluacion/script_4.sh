#!/bin/bash
#Cree un script que pregunte por un número (1, 2 o 3), dentro del script existirán 3 funciones con el nombre asociado a cada número, al seleccionar el número el script llamará la función (haga uso de case) e imprimirá el número entero asociado a la palabra de la función, de no indicar un número válido, el script imprimirá el mensaje “Número no válido” y concluirá con código de error 47.
#set -x

imprime_uno (){
echo "1-uno"
} 
imprime_dos (){
echo "2-dos"
} 
imprime_tres (){
echo "3-tres"
} 

echo "Digite alguno de los siguientes numero : 1,2 o 3"
read numero

if [ $numero -eq 1 ] || [ $numero -eq 2 ] || [ $numero -eq 3 ]; then
 
 case $numero in
  1) imprime_uno
   ;;
  2) imprime_dos
   ;;
  3) imprime_tres
   ;;
 esac

else
  echo "Número no valido"
  exit 47
fi


