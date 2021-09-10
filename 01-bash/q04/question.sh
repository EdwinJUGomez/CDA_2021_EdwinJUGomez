##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es el valor del campo 'validthru' del archivo 'data.csv' para 
##  el registro 2?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
head -n 3 data.csv > data1.csv
tail -n 1 data1.csv > data2.csv
cut -d"," -f2 data2.csv > data3.csv
sed 's/^"//g' data3.csv > data4.csv
sed 's/"$//g' data4.csv > data5.csv
cat data5.csv