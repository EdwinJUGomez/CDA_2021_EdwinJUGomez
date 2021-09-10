##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'validthru' del archivo 'data.csv' para el 
##  ultimo registro?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
tail -n1 data.csv > data1.csv
cut -d"," -f2 data1.csv > data2.csv
sed 's/\"//g' data2.csv > data3.csv
cat data3.csv