#!/bin/bash
#Cree un script que pregunte al usuario por el nombre de un directorio, el script creará y accederá el mismo, seguidamente imprimirá en pantalla la ruta del directorio actual, el script creará 3 archivos llamados “archivo1.txt”, “archivo2.log” y “archivo3.tmp” deberá de imprimir la ruta absoluta del archivo creado, deberá de generar algún dato genérico y redireccionarlo a cada archivo creado, el contenido de cada archivo será diferente, al finalizar script mostrará el contenido de cada archivo y mostrará el mensaje “Fin del Script”.i

echo "Digite el nombre de un nuevo directorio"
read nameD
mkdir $nameD
echo "Directorio ubicado en $(readlink -f $nameD) "
for i in archivo.txt archico2.log archivo3.tmp; do
var=$nameD/$i
echo "Este es el contenido del archivo $i creado en la ubicación:" > $var
readlink -f $var >> $var
cat $var
done
echo "FIN DEL SCRIPT"
