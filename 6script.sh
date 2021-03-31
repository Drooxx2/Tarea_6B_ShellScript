dir=$1
nficheros=`ls $dir/*.txt | wc -l`

`rm $dir/*.txt`

echo "Se han borrado $nficheros ficheros"