##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv`, genera una lista de tuplas que asocien las 
##  columnas 0 y 1. Cada tupla contiene un valor posible de la columna 2 y una
##  lista con todas las letras asociadas (columna 1) a dicho valor de la 
##  columna 2.
##
##  Rta/
##  ('0', ['C'])
##  ('1', ['E', 'B', 'D', 'A', 'A', 'E'])
##  ('2', ['A', 'E', 'D'])
##  ('3', ['A', 'B', 'D', 'E', 'E'])
##  ('4', ['E', 'B'])
##  ('5', ['B', 'C', 'D', 'D', 'E', 'E', 'E'])
##  ('6', ['C', 'E', 'A', 'B'])
##  ('7', ['A', 'C', 'E', 'D'])
##  ('8', ['E', 'E', 'A', 'B'])
##  ('9', ['A', 'B', 'E', 'C'])
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    letras = [c[0:2] for c in filas]
    diccionario= {}
    for i in letras:
        if i[1] not in diccionario.keys():
            diccionario[i[1]] = [i[0]]
        else:
            diccionario[i[1]].append(i[0])

    for k  in sorted(diccionario.keys()):
       print((str(k),diccionario[k]))
      