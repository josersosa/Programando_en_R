# Los puntos suspensivos se pueden utilizar para transmitir argumentos a 
# otras funciones que esten dentro de la función que estémos escribiendo. 
# Por lo general, una función que tiene la elipsis como un argumento, la 
# tiene como el último argumento. El uso de tal función se vería así:
#
# ellipses_func (arg1, arg2 = TRUE, ...)
#
# En el ejemplo anterior arg1 no tiene ningún valor por defecto, por lo 
# que su valor debe ser proporcionado en la llamada a la función, arg2 
# tiene un valor por defecto, los otros argumentos puede venir después 
# de arg2 dependiendo de cómo estén definidos en la documentación  de 
# ellipses_func(). Interesante es la definición de la función paste()  
# como vemos a continuación:
#
# paste(..., sep = " ", collapse = NULL)
#
# Tenga en cuenta que los puntos suspensivos son el primer argumento, y 
# todos los demás argumentos que vienen después de las elipsis tienen 
# valores por defecto. Esta es una regla estricta en la programación de 
# R: todos los argumentos después de una elipsis deben tener valores 
# predeterminados. Eche un vistazo a la función simon_says a continuación:
#
# simon_says <- function(...){
#   paste("Simon says:", ...)
# }
#
# La función simon_says funciona igual que la función de paste, excepto 
# que eal comienzo de cada cadena se le antepone la cadena "Simón dice:"
#
# Los telegramas solían ser modificados con las palabras de START y STOP 
# con el fin de demarcan el comienzo y el final de las oraciones. 
# Escriba a continuación una función llamada telegram que dé formato al 
# texto del telegrama. Por ejemplo, la expresión 
# `telegram("Good", "morning")` 
# debe evaluarse como: "START Good morning STOP"

telegram <- function(...){
  
}
