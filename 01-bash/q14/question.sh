##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es la 'ciudad (estado)' en la posicion 2 del archivo 'person', si el 
##  archivo se organiza alfabeticamente por el campo 'ssn'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
sort -k1 person > person1
cut -d"," -f3 person1 > person2
head -n2 person2 > person3
tail -n1 person3 > person4
sed 's/\"//g' person4 > person5
cat person5
