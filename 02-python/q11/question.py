##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, imprima la suma de la columna 2 para cada 
##  letra de la columna 4, ordnados alfabeticamente.
##
##  Rta/
##  a,114
##  b,40
##  c,91
##  d,65
##  e,79
##  f,110
##  g,35
##  No puede usar pandas en este ejercicio
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    var = [[c[1], c[3].split(',')] for c in filas]
    dicc= {}
    for i in var:
        for m in i[1]:
            if m not in dicc.keys():
                dicc[m] = [int(i[0])]
            else:  
                dicc[m].append(int(i[0]))
    for clave in sorted(dicc.keys()):
        print(clave + ',' + str(sum(dicc[clave])))
