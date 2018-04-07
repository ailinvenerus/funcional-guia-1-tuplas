--Definir la función calcular, que recibe una tupla de 2 elementos, si el primer
--elemento es par lo duplica, sino lo deja como esta y con el segundo elemento en caso de
--ser impar le suma 1 y si no deja esté último como esta.
--Main> calcular (4,5)
--(8,6)
--Main> calcular (3,7)
--(3,8)
--Nota: Resolverlo utilizando aplicación parcial y composición. 

calcular (numero1, numero2) | (even numero1) && not (even numero2) = (duplicar numero1, sumarUno numero2)
							| even numero1 = (duplicar numero1, numero2)
							| not (even numero2) = (numero1, sumarUno numero2)
							| otherwise = (numero1, numero2)

duplicar = (*2)
sumarUno = (+1)