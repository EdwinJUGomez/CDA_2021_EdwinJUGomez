##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, imprima por cada fila, la columna 1 y la suma 
##  de los valores de la columna 5.
##
##  Rta/
##  E,22
##  A,14
##  B,14
##  ....
##  C,8
##  E,11
##  E,16
##
##  No puede usar pandas en este ejercicio
##  >>> Escriba su codigo a partir de este punto <<<
##
import re
with open('data.csv', 'r') as f:
    
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    var = [[c[0], c[4]] for c in filas]
    dicc= {}
    for i in var:
        num = re.findall('\d+', i[1])
        num = [int(n) for n in num]
        print(i[0]+','+str(sum(num)))
