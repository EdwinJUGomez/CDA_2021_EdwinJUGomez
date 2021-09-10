##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es la 'ciudad (estado)' en la posicion 1 del archivo 'person', si el 
##  archivo se organiza alfabeticamente por el campo 'ssn'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
sort -k1 person > person1
cut -d"," -f3 person1 > person2
head -n1 person2 > person3
sed 's/\"//g' person3 > person4
cat person4