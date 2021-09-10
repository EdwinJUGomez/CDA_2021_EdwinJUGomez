##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cuantas tarjetas se vencen en el trimestre Q1 del año?
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
awk -F, '$2 ~ /Mar|Feb|Jan/ {print}' *.txt | wc -l