##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, imprima la suma de la columna 2 por cada letra 
##  de la primera columna, ordneados alfabeticamente.
##
##  Rta/
##  A,37
##  B,36
##  C,27
##  D,23
##  E,67
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    letras = [c[0:2] for c in filas]
    diccionario= {}
    for i in letras:
        if i[0] not in diccionario.keys():
            diccionario[i[0]] = int(i[1])
        else:
            diccionario[i[0]]= int(i[1])+ diccionario[i[0]]
    
    for k  in sorted(diccionario.keys()):
        print(k + ',' + str(diccionario[k]))


