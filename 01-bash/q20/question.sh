##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual el nombre  completo (fullname) del del dueño de la tarjeta 
##  3608-2596-5551-1068?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
grep 3608-2596-5551-1068 bank.csv > bank1.csv
cut -d"," -f2 bank1.csv > key.csv
grep 138-25-1957 person > person1
cut -d"," -f5 person1 > person2
sed 's/\"//g' person2 > person3
cat person3