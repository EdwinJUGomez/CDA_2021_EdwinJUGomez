##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cuantos registros hay en el archivo 'person' para city = 'New York (New York)'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
grep 'New York (New York)' person | wc -l > person1
sed 's/ //g' person1 > person2
cat person2