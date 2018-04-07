-- Definir la función aplicar, que recibe como argumento una tupla de 2 elementos con funciones y un entero,
--me devuelve como resultado una tupla con el resultado de aplicar el elemento a cada una de la funciones

aplicar (funcion1, funcion2) entero = (funcion1 entero, funcion2 entero)
funciones = (doble, triple)

doble = (*2)
triple = (*3)

-- ejemplo:
-- aplicar (doble,triple) 8
-- (16,24)