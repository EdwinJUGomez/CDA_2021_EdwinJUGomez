##
##  Programación en Bash
##  ===========================================================================
##
##  Usando los archivos `data1.csv`, `data2.csv`, `data3.csv`, escriba en el
##  archivo `script.sh`  un programa en Bash que imprima en pantalla
##  la siguiente salida por linea:
## 
##  * El nombre del archivo.
##  * El número de la línea procesada.
##  * La letra de la primera columna del archivo.
##  * La cadena de tres letras y el valor asociado de la columna 2 del archivo original. 
##
##  Note que se genera una línea de salida por cada cadena de tres letras.
##   
##  Rta/
##
##  data1.csv,1,E,jjj:3
##  data1.csv,1,E,bbb:0
##  ...
##  data3.csv,3,B,hhh:1
##  data3.csv,3,B,ddd:2
##
##  >>> Escriba su codigo a partir de este punto <<<
##
# Imprimir nombre de archivo
awk '{print $NF}' <<< data1.csv > archivo1.csv

# Enumerar cada línea
awk 'NF { $0=++a " :" $0 }; { print }' data1.csv > datax.csv

# Juntar el # de línea con la letra separados por ,
awk '{sub(/\ :/, ","); print}' datax.csv > datax1.csv

# Juntar todas las columnas separadas por ,
awk '{sub(/\t/, ","); print}' datax1.csv > datax2.csv

# Procesar la linea1
awk 'NR == 1 {print}' datax2.csv > data1l1

# Imprimir cada columna de linea 1

awk '{split($0,cols,",")} {print cols[1]}' data1l1 > col1l1
awk '{split($0,cols,",")} {print cols[2]}' data1l1 > col2l1
awk '{split($0,cols,",")} {print cols[3]}' data1l1 > col3l1
paste -d"," archivo1.csv col1l1 col2l1 col3l1 > union1l11
awk '{split($0,cols,",")} {print cols[4]}' data1l1 > col4l1
paste -d"," archivo1.csv col1l1 col2l1 col4l1 > union2l11
awk '{split($0,cols,",")} {print cols[5]}' data1l1 > col5l1
paste -d"," archivo1.csv col1l1 col2l1 col5l1 > union3l11
awk '{split($0,cols,",")} {print cols[6]}' data1l1 > col6l1
paste -d"," archivo1.csv col1l1 col2l1 col6l1 > union4l11
awk '{split($0,cols,",")} {print cols[7]}' data1l1 > col7l1
paste -d"," archivo1.csv col1l1 col2l1 col7l1 > union5l11
# Procesar la linea2
awk 'NR == 2 {print}' datax2.csv > data1l2
awk '{split($0,cols,",")} {print cols[1]}' data1l2 > col1l21
awk '{split($0,cols,",")} {print cols[2]}' data1l2 > col2l21
awk '{split($0,cols,",")} {print cols[3]}' data1l2 > col3l21
paste -d"," archivo1.csv col1l21 col2l21 col3l21 > union1l21
awk '{split($0,cols,",")} {print cols[4]}' data1l2 > col4l21
awk '{split($0,cols,",")} {print cols[5]}' data1l2 > col5l21
awk '{split($0,cols,",")} {print cols[6]}' data1l2 > col6l21
paste -d"," archivo1.csv col1l21 col2l21 col4l21 > union2l21
paste -d"," archivo1.csv col1l21 col2l21 col5l21 > union3l21
paste -d"," archivo1.csv col1l21 col2l21 col6l21 > union4l21

# Procesar la linea 3
awk 'NR == 3 {print}' datax2.csv > data1l3
awk '{split($0,cols,",")} {print cols[1]}' data1l3 > col1l31
awk '{split($0,cols,",")} {print cols[2]}' data1l3 > col2l31
awk '{split($0,cols,",")} {print cols[3]}' data1l3 > col3l31
paste -d"," archivo1.csv col1l31 col2l31 col3l31 > union1l31
awk '{split($0,cols,",")} {print cols[4]}' data1l3 > col4l31
awk '{split($0,cols,",")} {print cols[5]}' data1l3 > col5l31
awk '{split($0,cols,",")} {print cols[6]}' data1l3 > col6l31
paste -d"," archivo1.csv col1l31 col2l31 col4l31 > union2l31
paste -d"," archivo1.csv col1l31 col2l31 col5l31 > union3l31
paste -d"," archivo1.csv col1l31 col2l31 col6l31 > union4l31

# Juntarlos todos 
cat union1l11 union2l11 union3l11 union4l11 union5l11 union1l21 union2l21 union3l21 union4l21 union1l31 union2l31 union3l31 union4l31 > data1ok.csv


# ARCHIVO DATA2.CSV
awk '{print $NF}' <<< data2.csv > archivo2.csv
awk 'NF { $0=++a " :" $0 }; { print }' data2.csv > datay.csv
awk '{sub(/\ :/, ","); print}' datay.csv > datay1.csv
awk '{sub(/\t/, ","); print}' datay1.csv > datay2.csv
awk '{sub(/A   h/, "A,h"); print}' datay2.csv > datay3.csv
tail -n2 datay3.csv > datay4.csv

awk 'NR == 1 {print}' datay4.csv > data2l1

awk '{split($0,cols,",")} {print cols[1]}' data2l1 > col1l12
awk '{split($0,cols,",")} {print cols[2]}' data2l1 > col2l12
awk '{split($0,cols,",")} {print cols[3]}' data2l1 > col3l12
paste -d"," archivo2.csv col1l12 col2l12 col3l12 > join1l12

awk '{split($0,cols,",")} {print cols[4]}' data2l1 > col4l12
awk '{split($0,cols,",")} {print cols[5]}' data2l1 > col5l12
awk '{split($0,cols,",")} {print cols[6]}' data2l1 > col6l12
paste -d"," archivo2.csv col1l12 col2l12 col4l12 > join2l12
paste -d"," archivo2.csv col1l12 col2l12 col5l12 > join3l12
paste -d"," archivo2.csv col1l12 col2l12 col6l12 > join4l12

awk 'NR == 2 {print}' datay4.csv > data2l2

awk '{split($0,cols,",")} {print cols[1]}' data2l2 > col1l22
awk '{split($0,cols,",")} {print cols[2]}' data2l2 > col2l22
awk '{split($0,cols,",")} {print cols[3]}' data2l2 > col3l22
paste -d"," archivo2.csv col1l22 col2l22 col3l22 > join1l22

awk '{split($0,cols,",")} {print cols[4]}' data2l2 > col4l22
awk '{split($0,cols,",")} {print cols[5]}' data2l2 > col5l22
awk '{split($0,cols,",")} {print cols[6]}' data2l2 > col6l22
paste -d"," archivo2.csv col1l22 col2l22 col4l22 > join2l22
paste -d"," archivo2.csv col1l22 col2l22 col5l22 > join3l22
paste -d"," archivo2.csv col1l22 col2l22 col6l22 > join4l22

# juntarlos todos
cat join1l12 join2l12 join3l12 join4l12 join1l22 join2l22 join3l22 join4l22 > data2ok.csv


# ARCHIVO DATA3.CSV
awk '{print $NF}' <<< data3.csv > archivo3.csv
awk 'NF { $0=++a " :" $0 }; { print }' data3.csv > dataz.csv
awk '{sub(/\ :/, ","); print}' dataz.csv > dataz1.csv
awk '{sub(/\t/, ","); print}' dataz1.csv > dataz2.csv


awk 'NR == 1 {print}' dataz2.csv > data3l1
awk '{split($0,cols,",")} {print cols[1]}' data3l1 > col1l13
awk '{split($0,cols,",")} {print cols[2]}' data3l1 > col2l13
awk '{split($0,cols,",")} {print cols[3]}' data3l1 > col3l13
paste -d"," archivo3.csv col1l13 col2l13 col3l13 > last1l13

awk '{split($0,cols,",")} {print cols[4]}' data3l1 > col4l13
awk '{split($0,cols,",")} {print cols[5]}' data3l1 > col5l13
awk '{split($0,cols,",")} {print cols[6]}' data3l1 > col6l13
awk '{split($0,cols,",")} {print cols[7]}' data3l1 > col7l13
paste -d"," archivo3.csv col1l13 col2l13 col4l13 > last2l13
paste -d"," archivo3.csv col1l13 col2l13 col5l13 > last3l13
paste -d"," archivo3.csv col1l13 col2l13 col6l13 > last4l13
paste -d"," archivo3.csv col1l13 col2l13 col7l13 > last5l13

awk 'NR == 2 {print}' dataz2.csv > data3l2
awk '{split($0,cols,",")} {print cols[1]}' data3l2 > col1l23
awk '{split($0,cols,",")} {print cols[2]}' data3l2 > col2l23
awk '{split($0,cols,",")} {print cols[3]}' data3l2 > col3l23
paste -d"," archivo3.csv col1l23 col2l23 col3l23 > last1l23

awk '{split($0,cols,",")} {print cols[4]}' data3l2 > col4l23
awk '{split($0,cols,",")} {print cols[5]}' data3l2 > col5l23
awk '{split($0,cols,",")} {print cols[6]}' data3l2 > col6l23
awk '{split($0,cols,",")} {print cols[7]}' data3l2 > col7l23
awk '{split($0,cols,",")} {print cols[8]}' data3l2 > col8l23
paste -d"," archivo3.csv col1l23 col2l23 col4l23 > last2l23
paste -d"," archivo3.csv col1l23 col2l23 col5l23 > last3l23
paste -d"," archivo3.csv col1l23 col2l23 col6l23 > last4l23
paste -d"," archivo3.csv col1l23 col2l23 col7l23 > last5l23
paste -d"," archivo3.csv col1l23 col2l23 col8l23 > last6l23

awk 'NR == 3 {print}' dataz2.csv > data3l3
awk '{split($0,cols,",")} {print cols[1]}' data3l3 > col1l33
awk '{split($0,cols,",")} {print cols[2]}' data3l3 > col2l33
awk '{split($0,cols,",")} {print cols[3]}' data3l3 > col3l33
paste -d"," archivo3.csv col1l33 col2l33 col3l33 > last1l33

awk '{split($0,cols,",")} {print cols[4]}' data3l3 > col4l33
awk '{split($0,cols,",")} {print cols[5]}' data3l3 > col5l33
paste -d"," archivo3.csv col1l33 col2l33 col4l33 > last2l33
paste -d"," archivo3.csv col1l33 col2l33 col5l33 > last3l33

# Juntarlos todos
cat last1l13 last2l13 last3l13 last4l13 last5l13 last1l23 last2l23 last3l23 last4l23 last5l23 last6l23 last1l33 last2l33 last3l33 > data3ok.csv

cat data1ok.csv data2ok.csv data3ok.csv > porfin.csv
cat porfin.csv