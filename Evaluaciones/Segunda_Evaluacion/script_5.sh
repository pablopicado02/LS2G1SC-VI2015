#!/bin/bash
#cree un script que solicite 2 números, el mismo realizará la suma de ambos y la imprimirá en pantalla, el script preguntará al usuario si desea seguir realizando suma de 2 números, cuando finalice imprimirá el resultado total de las sumas.

#variables iniciales
sumax=$((0))
totalx=$((0))
#menu de seleccion del programa
menu () {
clear
echo "
Porfavor Seleccione

 1)Continuar sumando
 2)Salir
 
valores
suma=$sumax
total=$totalx
"
}

#bucle infinito
while true; do
menu
read entrada
if [ $entrada -eq 1 ] || [ $entrada -eq 2 ]; then
  case $entrada in
  
1) echo "Digite el primer valor"
   read sumando_uno
   echo "Digite el segundo valor"
   read sumando_dos
   sumax=$(($sumando_uno + $sumando_dos))
   totalx=$(($totalx + $sumax))
   continue
   ;;

2) echo "Gracias por SUMAR!!!!"
   break
   ;;
esac

else
menu

fi

done
