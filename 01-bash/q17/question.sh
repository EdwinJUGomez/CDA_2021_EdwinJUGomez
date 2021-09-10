##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cuantos registros quedan en el archivo 'person' si se eliminan los 
##  registros con 'city' = 'Anaheim (California)'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
perl -ne 'print if !/Anaheim/ && !/phone/' person > person1
wc -l person1 > person2
awk '{print $1}' person2 > person3
cat person3