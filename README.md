# Programando en R

Traducción al español del curso [R_Programming_Alt](https://github.com/swirldev/swirl_courses/tree/master/R_Programming_Alt) de [swirl](http://swirlstats.com/) sobre fundamentos de la programación en R. 

**Descripción**

El paquete de R [swirl](http://swirlstats.com/)("Learn R, in R") permite crear cursos interactivos que se ejecutan desde la propia consola de R, por lo cual el estudiante puede ejecutar la instrucciiones directamente en R en la medida que avanza su curso. Existen varios cursor en el [repositorio de swirl](https://github.com/swirldev/swirl_courses), pero todos están en ingles.

**Objetivo**

El objetivo de este proyecto es disponer un curso interactivo sobre los fundamentos de la programación en R, en el idioma español para aquellos hispanohablantes interesados en aprender este lenguaje de programación. Para esto se traducirá el curso [R_Programming_Alt](https://github.com/swirldev/swirl_courses/tree/master/R_Programming_Alt).

**Prerrequisitos**

Para acceder a este curso debes tener instalado el R, y preferiblemente Rstudio, así como el paquete [swirl](http://swirlstats.com/). Puedes instalarlo desde la consola de R así:

```{r}
install.packages('swirl')
```

**¿Como ejecutar el curso?**

Para realizar este curso debemos primero instalarlo desde su repositorio en github en la consola de R, así:

```{r}
library(swirl)
install_course_github('josersosa','Programando_en_R')
```

Y lo iniciamos con:

```{r}
swirl()
```

Al comienzo nos solicita un nombre para identificarnos y almacenar los avances que hagamos en el caso que deseemos pausar el curso. Las primeras informaciones estan en ingles porque provienen del paquete swirl. Luego seleccionamos el curso _Programando en R_ y a partir de ahí todo lo esencial estará traducido.

Por último, cuando hayamos terminado, podemos desinstalar el curso con:

```{r}
uninstall_course("Programando_en_R")
```


**Avance del proyecto**

Hasta ahora, este proyecto tiene una avance del **100%** en la traducción. Están traducidas todas las lecciones de un total de 12 del curso original [R_Programming_Alt](https://github.com/swirldev/swirl_courses/tree/master/R_Programming_Alt)..
Ya se han incluido la lecciones extras:
- Workspace_and_Files.
- Functions.

**TODOs**

Reconfigurar los directoris con los títulos en español.

Incluir las lecciones del curso [R Programming](https://github.com/swirldev/swirl_courses/tree/master/R_Programming) de swirl para hacer nuestro curso en español un poco más completo:
- Base_Graphics.

Por otra parte, intentaré incluir al final de cada lección, aparte del envío del correo, la opción de calificar mediante una conección a alguna aula virtual basada en moodle.

