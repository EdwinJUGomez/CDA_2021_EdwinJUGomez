##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'key' del archivo 'data.csv' para el 
##  registro 3?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
head -n 4 data.csv > data1.csv
tail -n 1 data1.csv > data2.csv
cut -d"," -f3 data2.csv > data3.csv
cat data3.csv