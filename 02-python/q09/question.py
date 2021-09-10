##
##  Programación en Python
##  ===========================================================================
##
##  Para el archivo `data.csv, imprima una tabla en formato CSV que contenga 
##  la cantidad de registros en que aparece cada clave de la columna 5.
##
##  Rta/
##  aaa,13
##  bbb,16
##  ccc,23
##  ddd,23
##  eee,15
##  fff,20
##  ggg,13
##  hhh,16
##  iii,18
##  jjj,18
##
##  No puede usar pandas en este ejercicipo
##
##  >>> Escriba su codigo a partir de este punto <<<
##
with open('data.csv', 'r') as f:
    
    lineas = f.readlines()
    filas = [line.split('\t') for line in lineas]
    col5 = [c[4].split(',') for c in filas]
    clave = []
    for d in col5:
        for uniqd in d:
            clave.append(uniqd[:3])
    ClaveUnica = set(clave)
    for i in sorted(ClaveUnica):
        print(i + ',' + str(clave.count(i)) )



