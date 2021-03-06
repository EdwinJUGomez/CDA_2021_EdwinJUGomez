##
##  Programación en Python
##  ===========================================================================
##
##  La columna 5 del archvio `data.csv` codifica un diccionario donde cada
##  cadena de tres letras corresponde a una clave y el valor despues del
##  caracter `:` corresponde al valor asociado a la clave. Por cada clave,
##  obtenga el valor asociado mas pequeño y el valor asociado mas grande 
##  computados sobre todo el archivo. 
##
##  Rta/
##  aaa,0,6
##  bbb,4,7
##  ccc,0,1
##  ddd,5,5
##  eee,0,0
##  fff,4,9
##  ggg,3,3
##  hhh,6,8
##  iii,2,7
##  jjj,2,5
##
##  >>> Escriba su codigo a partir de este punto <<<
##
data = open('data.csv','r').readlines()
df = map(lambda x:x.strip(),[i.split('\t')[4] for i in data])
df1 =[i.split(',') for i in df]
lista =[]
for i in range(len(df1)):
    for j in range(len(df1[i])):
        vector = df1[i][j]
        lista.append(vector)
        j +=1
    i +=1
lista_1 = [i.split(':') for i in lista]
num ={}
for clave, valor in lista_1:
    if clave in num:
        num[clave].append(valor)
    else:
        num[clave]=[valor]
for letras in sorted(num.keys()):
    valor = num.get(letras)
    print('%s,'%letras + '%s,'%min(valor) + '%s'%max(valor))




