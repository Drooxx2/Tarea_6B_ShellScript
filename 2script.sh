maxlineas=`cat ficheros_scripts/precipitaciones.txt | wc -l`
linea=1
total=0
contador=2

while [ $linea -le $maxlineas ]; do

    i=`cat ficheros_scripts/precipitaciones.txt | awk '{print $2}' | head -$linea | tail -1`
    total=`expr $total + $i`
    linea=`expr $linea + 1`
done

media=`expr $total / $maxlineas`
echo "La media de precipitaciones es $media"
    