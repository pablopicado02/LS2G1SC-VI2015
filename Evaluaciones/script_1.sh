#!/bin/bash

#1)Cree un script que contenga una función que permita imprimir en pantalla el código de salida, puede usar por la copia de un archivo no existente, llamar la función y después se crear el archivo y ejecutará nuevamente la función,  en cada caso que se ejecute el comando para copiar archivos se debe de enviar la salida estándar y de error al /dev/null.

salida (){
echo $? 
}
cp original copia &> /dev/null
salida
touch original
cp original copia &> /dev/null
salida

