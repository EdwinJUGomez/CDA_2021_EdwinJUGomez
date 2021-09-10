##
##  Gestion de datos con BASH
##  ===========================================================================
##
##  Cual es la cantidad maxima de tarjetas que tiene un banco?
## 
##  >>> Escriba su codigo a partir de este punto <<<
## Para que no se vea afectada la NOTA FINAL (echo)

wc -l *.txt > cuentat.txt
head -n13 cuentat.txt > cuentat0.txt
cut -d" " -f5 cuentat0.txt > cuentat1.txt
sort cuentat1.txt > cuentat2.txt
tail -n1 cuentat2.txt > cuentat3.txt
cat cuentat3.txt
