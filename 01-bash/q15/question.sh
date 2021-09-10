##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es la 'ciudad (estado)' en la posicion 3 del archivo 'person', si el 
##  archivo se organiza alfabeticamente por el campo 'ssn'?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
sort -k1 person > person1
awk 'NR ==3 {print}' person1 > person2
awk '{split($0,ciudad,",")} {print ciudad[3]}' person2 > person3
sed 's/\"//g' person3 > person4
cat person4