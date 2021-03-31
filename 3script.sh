maxlineas=`cat ficheros_scripts/precipitaciones.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do

    numdia=`cat ficheros_scripts/precipitaciones.txt | awk '{print $1}' | head -$linea | tail -1`
    litros=`cat ficheros_scripts/precipitaciones.txt | awk '{print $2}' | head -$linea | tail -1`
    resto=`expr $numdia % 7`
    linea=`expr $linea + 1`

    if [ $resto -eq 0 ];
    then
        stringdia="Domingo"
    elif [ $resto -eq 1 ];
    then
        stringdia="Lunes"
    elif [ $resto -eq 2 ];
    then
        stringdia="Martes"
    elif [ $resto -eq 3 ];
    then
        stringdia="Miercoles"   
    elif [ $resto -eq 4 ];
    then
        stringdia="Jueves"
    elif [ $resto -eq 5 ];
    then
        stringdia="Viernes"
    elif [ $resto -eq 6 ];
    then
        stringdia="Sabado"
    fi
    
    if [ $litros -eq 0 ];
    then
        echo "El $stringdia dia $numdia no llovio"
    fi
done