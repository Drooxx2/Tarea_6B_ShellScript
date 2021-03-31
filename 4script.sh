totalpar=0
totalimpar=0
linea=1
listapar="Numeros pares: "
listaimpar="Numeros impares: "

for i in $(cat ficheros_scripts/numeros.txt); do
    
    linea=`expr $linea + 1`
    espar=`expr $i % 2`
    
    if [ $espar -eq 0 ];
    then
	totalpar=`expr $totalpar + 1`
	listapar="$listapar$i, "
    elif [ $espar -eq 1 ];
    then
	totalimpar=`expr $totalimpar + 1`
	listaimpar="$listaimpar$i, "
    fi
done

echo "Listado de numeros pares: $listapar"
echo "Listado de numeros impares: $listaimpar"
echo "Total de numeros pares: $totalpar"
echo "Total de numeros impares: $totalimpar"


    