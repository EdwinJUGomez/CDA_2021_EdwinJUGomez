##
##  Programación en Python
##  ===========================================================================
##
##  Imprima la cantidad de registros por letra para la primera columna del 
##  archivo `data.csv`, ordenados alfabeticamente por la letra.
##
##  Rta/
##  A,8
##  B,7
##  C,5
##  D,6
##  E,14
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    letras = [c[0] for c in filas]
    l=set(letras)
    for i in sorted(l):
        print(i+','+str(letras.count(i)))
