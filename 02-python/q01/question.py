##
##  Programación en Python
##  ===========================================================================
##
##  Imprima la suma de la segunda columna del archivo `data.csv`.
##
##  Rta/
##  190
##
##  >>> Escriba su codigo a partir de este punto <<<
##

with open('data.csv', 'r') as f:
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    columna2 = [int(c[1]) for c in filas]
    sum_col2 = sum(columna2)
print(sum_col2)