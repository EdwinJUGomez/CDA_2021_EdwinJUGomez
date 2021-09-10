##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, imprima una tabla en formato CSV que contenga 
##  por registro, la letra de la columna 1 y la cantidad de elementos de las 
##  columnas 4 y 5. 
## 
##  Rta/
##  E,3,5
##  A,3,4
##  B,4,4
##  ...
##  C,4,3
##  E,2,3
##  E,3,3
##  
##  No puede usar pandas en este ejercicio
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    var = [[c[0], c[3], c[4]] for c in filas]
    for i in var:
        print(i[0] + ',' + str(len(i[1].split(','))) + ',' + str(len(i[2].split(','))))

    
