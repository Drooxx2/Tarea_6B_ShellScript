n=$1
contador=0

for i in $(cat ficheros_scripts/nombres.txt); do
    mkdir $i
    cd $i
    while [ $contador -lt $n ]; do
        contador=`expr $contador + 1`
        mkdir personal$contador
    done
    cd ..
    contador=0
done