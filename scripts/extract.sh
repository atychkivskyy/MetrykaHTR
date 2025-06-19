#!/bin/bash

mkdir -p metryka_images
cd metryka_images

for i in $(seq -f "%04g" 1 44); do
    filename="PL_1_301_315_${i}.jpg"
    url="http://agadd.home.net.pl/metrykalia/301/sygn.%20315/images/$filename"
    echo "Descargando $filename ..."
    wget -q --show-progress "$url" -O "$filename"
done
