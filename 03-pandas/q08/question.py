##
##  Programación con Pandas
##  ===========================================================================
##
##  Construya una tabla que contenga _c1 y una lista
##  separada por ':' de los valores de la columna _c2
##  para el archivo `tbl0.tsv`.
##
##  Rta/
##    _c0                        lista
##  0   A              1:1:2:3:6:7:8:9
##  1   B                1:3:4:5:6:8:9
##  2   C                    0:5:6:7:9
##  3   D                  1:2:3:5:5:7
##  4   E  1:1:2:3:3:4:5:5:5:6:7:8:8:9
## 
##  >>> Escriba su codigo a partir de este punto <<<
##
import pandas as pd
df = pd.read_csv('tbl0.tsv', sep='\t')
df = (df.groupby('_c1')['_c2'].apply(list)).reset_index()
df['_c2'] = df['_c2'].apply(lambda x: ':'.join([str(e) for e in sorted(x)]))
df.columns = ['_c0', 'lista']
print(df)
