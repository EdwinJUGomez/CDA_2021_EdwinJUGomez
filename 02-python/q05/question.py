##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, imprima el valor maximo y minimo de la columna
##  2 por cada letra de la columa 1.
##
##  Rta/
##  A,9,1
##  B,9,1
##  C,9,0
##  D,7,1
##  E,9,1
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    letras = [c[0:2] for c in filas]
    diccionario= {}
    dicc2 = {}
    for i in letras:
        if i[0] not in diccionario.keys():
            diccionario[i[0]] = int(i[1])
            dicc2[i[0]] = int(i[1])
        else:
            diccionario[i[0]]= max(int(i[1]), diccionario[i[0]])
            dicc2[i[0]]= min(int(i[1]), dicc2[i[0]]) 
    
    for k  in sorted(diccionario.keys()):
        print(k + ',' + str(diccionario[k]) + ',' + str(dicc2[k]))
