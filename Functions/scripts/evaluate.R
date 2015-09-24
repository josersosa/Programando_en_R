# Se puede pasar funciones como argumentos a otras funciones al igual 
# que usted puede pasar datos a funciones. Digamos que usted define 
# las siguientes funciones:
#
# add_two_numbers <- function(num1, num2){
#    num1 + num2
# }
#
# multiply_two_numbers <- function(num1, num2){
#	num1 * num2
# }
#
# some_function <- function(func){
#    func(2, 4)
# }
#
# Como se puede ver se utiliza el nombre de argumento "func" como una 
# función dentro de "some_function()." Al pasar funciones como argumentos
# some_function(add_two_numbers) se evaluará en 6, mientras que
# some_function(multiply_two_numbers) se evaluará en 8.
#
# Finalize la definición de la función de abajo de modo que si una función 
# se pasa en el argumento "func" y algunos datos (como un vector) se 
# pasan al argumento dat, la función evaluate() devolverá el resultado 
# de func al que se le pasa argumento dat .
#
# Sugerencias: Este ejercicio es un poco difícil así que le voy a dar 
# algunos ejemplos de cómo evaluate() debe actuar:
# 1. evaluate(sum, c(2, 4, 6)) se debe evaluar en 12
# 2. evaluate(median, c(7, 40, 9)) se debe evaluar en 9
# 3. evaluate(floor, 11.1) se debe evaluar en 11

evaluate <- function(func, dat){
  # Escriba su código aquí!
  # Recuerde: la última expresión evaluada será el valor devuelto por la función!
}
