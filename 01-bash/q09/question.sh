##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'ccn' del archivo 'data.csv' para el 
##  registro 10?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
sed -n '11p' data.csv > data1.csv
cut -d"," -f1 data1.csv > data2.csv
sed 's/\"//g' data2.csv > data3.csv
cat data3.csv