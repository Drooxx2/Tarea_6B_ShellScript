ip="192.168.0."
contador=0

echo "Listado de IPs:"
for i in `seq 136 254`; do
    correctos=`ping -c 1 $ip$i | grep received | awk '{print $4}'`
    if [ $correctos -gt 0 ]
    then
	echo $ip
    fi
done