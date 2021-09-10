##
##  Programación con Pandas
##  ===========================================================================
##
##  Imprima la suma de la _c2 por cada letra de la _c1 
##  del archivo `tbl0.tsv`.
## 
##  Rta/
##  _c1
##  A    37
##  B    36
##  C    27
##  D    23
##  E    67
##  Name: _c2, dtype: int64
##
##  >>> Escriba su codigo a partir de este punto <<<
##
import pandas as pd
data = pd.read_csv('tbl0.tsv', encoding = 'latin', delimiter = '\t', decimal='.')
df = data.groupby('_c1').sum()['_c2']
print(df)
