[![Work in Repl.it](https://classroom.github.com/assets/work-in-replit-14baed9a392b3a25080506f3b7b6d57f295ec2978f6f33ec97e36a161684cbe9.svg)](https://classroom.github.com/online_ide?assignment_repo_id=4554710&assignment_repo_type=AssignmentRepo)
# Laboratorios de programación

Este repo contiene los talleres de programación del curso Ciencia de los Datos Aplicada, ofertado en la Facultad de Minas, Universidad Nacional de Colombia, Sede Medellín.

A continuación se describe el procedimiento para realizar los laboratorios de programación.

## Instalación del software

Para realizar los laboratorios de programación usted deberá instalar previamente GitHub Desktop, Visual Studio Code y Docker Desktop en su computador. Descarguelos de los siguientes vínculos: 

* https://desktop.github.com

* https://www.docker.com/products/docker-desktop

* https://code.visualstudio.com/download

Realice las siguientes configuraciones adicionales:

* Configure GitHub Desktop con su cuenta de correo electrónico de la UNAL.

* Instale la extensión Remote-Containers de Visual Studio Code. El proceso detallado de instalación se encuentra disponible en https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers


## Clonación del repo al computador personal

Clone su repositorio al disco duro desde la página web de GitHub. 

Ponga mucha atención en que parte del disco duro guarda el repo.

## Apertura de Visual Studio Code para realizar los laboratorios

En GitHub Desktop haga click en el repo y luego click en Abrir con VS code.

Seguidamente VS code le indicará que si reabre el repo en un contendor. Acepte la petición.

Una vez finalizado el proceso, VS code permitirá editar el código fuente desde dentro de un contendor con Python3 instalado sobre una máquina Linux.


## Ejecución del evaluador

* Para ejecutar el evaluador sobre todas las tareas digite `python3 grade` en el directorio raíz del repo. Para los puntos con una solución errónea, el sistema le reportará el resultado esperado y el resultado computado por su solución. Para los puntos solucionados correctamente, el sistema solo indicará que ejecuto el punto. Finalmente, el sistema le entregará por pantalla un informe detallado de cada punto y la correspondiente nota por punto, laboratorio y para el curso.

* Si esta realizando la solución de un punto particular, resulta más apropiado que entre a la carpeta de dicho punto y ejecute el comando `python3 grader`.  Este evaluará únicamente el punto actual.




