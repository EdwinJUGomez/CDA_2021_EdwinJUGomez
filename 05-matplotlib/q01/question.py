##
##  Graficacion usando Matplotlib
##  ===========================================================================
##
##  Construya una gráfica similar a la presentada en el archivo `original.png`
##  usando el archivo `data.csv`. La gráfica generada debe salvarse en el 
##  archivo `generada.png`. 
##
##  Salve la figura al disco con:
##
##     plt.savefig('generada.png')
##
##  >>> Escriba su codigo a partir de este punto <<<
##
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
df = pd.read_csv('data.csv', sep=',')
data = df.groupby('Region').sum()[['Poblacion 0-14', 'Poblacion 15-64', 'Poblacion 65+']]
fig, axes = plt.subplots(1,6, sharex=True, sharey=True, figsize=(13,6), dpi=72);
plt.subplots_adjust(wspace = 0.1, hspace=0.1);
plt.setp(axes[0], ylabel='Poblacion')
for i in range(6):
    axes[i].scatter(data.columns, data.iloc[i,:], marker='o', edgecolors=['tab:orange', 'tab:blue', 'tab:green'],
    linewidth = 3, facecolors='none', s=200);
    axes[i].set_xlim(-0.30,2.30)
for n, ax in enumerate(axes):
    ax.set_xticks(range(3));
    ax.set_xticklabels(data.columns, rotation=90);
    ax.set_title(data.index[n]);
plt.tight_layout()
plt.savefig('generada.png');
