##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'quota' del archivo 'data.csv' para el 
##  ultimo registro?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
tail -n 1 data.csv > data1.csv
cut -d"," -f5 data1.csv > data2.csv
cat data2.csv