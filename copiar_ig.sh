#!/bin/bash

# Definir las rutas de origen y destino
origen="/Users/jorgemansilla/IGs/_HL7CHILE_clcore_ig/"
destino="/Users/jorgemansilla/IGs/_HL7CHILE_clcore_publish_hl7/clcore_ig/"

# Carpeta que deseas omitir
carpeta_a_omitir=".git"


# Copiar el contenido del origen al destino, reemplazando los archivos y carpetas existentes y eliminando los archivos que no existen en el origen
rsync -av --delete --exclude="$carpeta_a_omitir/" "$origen/" "$destino/"

echo "La sincronización se ha completado correctamente."


cp clcore_ig/input-cache/publisher.jar .

