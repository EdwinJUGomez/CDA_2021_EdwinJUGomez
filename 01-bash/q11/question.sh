##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cuantos registros hay en el archivo 'person' para city = 'Los Angeles (California)'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
grep 'Los Angeles (California)' person | wc -l > person1
sed 's/ //g' person1 > person2
cat person2