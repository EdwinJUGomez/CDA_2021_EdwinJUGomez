##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'key' del archivo 'data.csv' para el 
##  ultimo registro?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
tail -n 1 data.csv > data1.csv
cut -d"," -f1 data1.csv > data2.csv
sed 's/^"//g' data2.csv > data3.csv
sed 's/"$//g' data3.csv > data4.csv
cat data4.csv