##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'ccn' del archivo 'data.csv' para el primer 
##  registro?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
head -n2 data.csv > data1.csv
tail -n1 data1.csv > data2.csv
cut -d"," -f1 data2.csv > data3.csv
sed 's/^"//g' data3.csv > data4.csv
sed 's/"$//g' data4.csv