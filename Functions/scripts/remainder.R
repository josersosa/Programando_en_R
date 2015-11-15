# Déjame mostrarte un ejemplo de una función que voy a comenzar llamado
# increment(). La mayoría de las veces vamos a querer utilizar esta 
# función para aumentar el valor del número por uno. Esta función 
# llevará a dos argumentos: "number" y "by" donde "number" es el dígito 
# que queremos incrementar y "by" es la cantidad por la que queremos 
# incrementar a "number". Para esto hemos escrito la siguiente función.
#
# increment <- function(number, by = 1){
#     number + by
# }
#
# Si usted echa un vistazo entre los paréntesis se puede ver que hemos 
# establecido "by" igual a 1. Esto significa que el argumento "by" 
# tendrá un valor predeterminado de 1.
#
# Ahora podemos usar la función increment, sin proporcionar un valor 
# para "by": increment(5) se evaluará en 6.
#
# Sin embargo si queremos ofrecer un valor para el argumento "by", 
# todavía se puede! la expresión: increment(5, 2) se evaluarán en 7.
#
# Usted debe a escribir una función llamada "remainder". remainder() 
# tomará dos argumentos: "num" y "divisor", donde "num" será dividido 
# por "divisor" y se devuelve el residuo de la división entera. Imagina 
# que por lo general quiere saber el residuo cuando se divide por 2, por 
# lo que establece el valor por defecto de "divisor" a 2. Por favor, 
# asegúrese de que "num" es el primer argumento y "divisor" es el segundo 
# argumento.
#
# Sugerencia # 1: Puede utilizar el operador módulo %% para encontrar el 
# residuo de la división. 
# Ej: 7 %% 4 se evalúa en 3.
#
# Recuerde que debe establecer los valores predeterminados apropiados! 
# Asegúrese de guardar este script y escriba de submit() en la consola 
# después de escribir la función.

remainder <- function(num, divisor) {
  # Escriba su código aquí!
  # Recuerde: la última expresión evaluada será el valor devuelto! 
}
