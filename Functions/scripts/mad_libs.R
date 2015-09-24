# Vamos a explorar cómo "desempaquetar" los argumentos de una elipsis 
# cuando  se utiliza como un argumento en una función. A continuación 
# tengo una función de ejemplo donde se supone que se sumarán los dos 
# argumentos con nombre explícitamente llamados alfa y beta.
#
# add_alpha_and_beta <- function(...){
#	# En primer lugar tenemos que capturar los puntos suspensivos en el 
#	# interior de una lista y luego asignar la lista a una variable. 
#	# Nombraremos a esta variable `args`.
#
#   args <- list(...)
#
#	# Vamos ahora va a suponer que hay dos argumentos con nombre dentro 
#	# de args con los llamados `alpha` y` beta.` Podemos extraer los 
#	# argumentos con nombre de la lista args utilizado el nombre del 
#	# argumento y los dobles corchetes. Las variables `args` son 
#	# simplemente una lista normal después de todo!
#
#   alpha <- args[["alpha"]]
#   beta  <- args[["beta"]]
#
#	# Entonces, retornamos la suma de alfa y beta.
#
#	alpha + beta 
# }
#
# ¿Alguna vez has usado Mad Libs antes? La función de abajo construye una
# frase a partir partes del discurso que usted debe proporcionar como  
# argumentos. Escribí la mayor parte de la función, pero tendrás que 
# desempaquetar los argumentos adecuados de la elipsis .

mad_libs <- function(...){
  # Haga el desempaquetado de su argumento aquí!
  
  # No modifique ningún código debajo de este comentario.
  # Tenga en cuenta las variables que se necesitan en orden, para hacer que el 
  # código de abajo sea funcional!
  paste("Noticias desde", lugar, "en la actualidad, donde los estudiantes", adjetivo, "salieron a las calles en protesta por el nuevo", sustantivo, "que se está instalando en el campus.")
}

