#!/bin/bash 


ruta="$1"
datos="$2"

if [ -z "$ruta" ] || [ -z "$datos" ]; then 
	echo "Uso: $0 <ruta><datos>"
	exit 1
fi

while IFS =, read -r apellidos nombre email url; 

do
	carpeta="$ruta/apellidos"
	mkdir "$carpeta";

	git clone "$url" "$carpeta"

done < "$datos"

echo "Proceso finalizado y completado"