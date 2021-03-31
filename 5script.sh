linea=0
maxlineas=`cat ficheros_scripts/listado.txt | wc -l`
linux=0
windows=0
prolinux=0
prowindows=0

while [ $linea -ne $maxlineas ]; do

    linea=`expr $linea + 1`
    so=`cat ficheros_scripts/listado.txt | awk '{print $2}' | head -$linea | tail -1`
    proceso=`cat ficheros_scripts/listado.txt | awk '{print $3}' | head -$linea | tail -1`
    
    
    if [ $so = "Linux" ];
    then
	linux=`expr $linux + 1`
	prolinux=`expr $prolinux + $proceso`
    elif [ $so = "Windows" ];
    then
	windows=`expr $windows + 1`
	prowindows=`expr $prowindows + $proceso`
    fi
done

echo "Linux $linux $prolinux"
echo "Windows $windows $prowindows"
	