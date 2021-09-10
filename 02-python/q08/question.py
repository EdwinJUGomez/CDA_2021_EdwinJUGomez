##
##  Programación en Python
##  ===========================================================================
##
##  Genere una lista de tuplas, donde cada tupla contiene en la primera 
##  posicion, el valor de la segunda columna; la segunda parte de la 
##  tupla es una lista con las letras (ordenadas y sin repetir letra) 
##  de la primera  columna que aparecen asociadas a dicho valor de la 
##  segunda columna. Esto es:
##
##  Rta/
##  ('0', ['C'])
##  ('1', ['A', 'B', 'D', 'E'])
##  ('2', ['A', 'D', 'E'])
##  ('3', ['A', 'B', 'D', 'E'])
##  ('4', ['B', 'E'])
##  ('5', ['B', 'C', 'D', 'E'])
##  ('6', ['A', 'B', 'C', 'E'])
##  ('7', ['A', 'C', 'D', 'E'])
##  ('8', ['A', 'B', 'E'])
##  ('9', ['A', 'B', 'C', 'E'])
##
## No puede usar pandas en este ejercicio
##
##  >>> Escriba su codigo a partir de este punto <<<

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
       print((str(k),sorted(set(diccionario[k]))))
      
