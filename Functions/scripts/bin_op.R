# La sintaxis para la creación de nuevos operadores binarios en R es 
# diferente a todo lo demás en R, pero le permite definir una nueva 
# sintaxis en su función. Yo solo le recomendaría hacer su propio 
# operador binario si usted planea usarlo muy a menudo!
#
# Los operadores binarios definidos por el usuario tienen la siguiente 
# sintaxis: [lo que sea]%
# Donde [lo que sea] representa cualquier nombre de variable válido.
#
# Digamos que quería definir un operador binario que multiplica dos números 
# y después se suma uno a el producto. Una implementación de este 
# operador es la siguiente:
#
# "%mult_add_one%" <- function(left, right){ # Observe las comillas!
#   left * right + 1
# }
#
# Yo podría entonces utilizar este operador binario como `4 %mult_add_one% 5` que se
# evaluaría en 21.
#
# Escriba su operador binario desde cero! Su operador
# debe llamarse %p% de manera que la expresión:
#
#       "Good" %p% "job!"
#
# Evaluará en: "Good job!"

"%p%" <- function(){ # Remember to add arguments!
  
}



