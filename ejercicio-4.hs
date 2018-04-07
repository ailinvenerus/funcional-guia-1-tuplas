-- Representamos las notas que se sacó un alumno en dos parciales mediante un par
--(nota1,nota2), p.ej. un patito en el 1ro y un 7 en el 2do se representan mediante el par
--(2,7).
--A partir de esto
--Definir la función esNotaBochazo, recibe un número y devuelve True si no llega a 4,
--False en caso contrario. No vale usar guardas.
--Definir la función aprobo, recibe un par e indica si una persona que se sacó esas notas
--aprueba. Usar esNotaBochazo.
--Definir la función promociono, que indica si promocionó, para eso tiene las dos notas
--tienen que sumar al menos 14 y además haberse sacado 6 en cada parcial.
--Escribir una consulta que dado un par indica si aprobó el primer parcial, usando
--esNotaBochazo y composición. La consulta tiene que tener esta forma (p.ej. para el par de notas (5,8)) 

esNotaBochazo = (<4)
aprobo (nota1,nota2) = not (esNotaBochazo (fst (nota1,nota2))) && not (esNotaBochazo (snd (nota1, nota2)))
notaMinima6 (nota1, nota2) = fst (nota1,nota2) >5 && snd (nota1,nota2) >5
promociono (nota1, nota2) = (nota1+nota2) >13 && notaMinima6 (nota1,nota2)

-- Consulta a comprobar:
-- not (esNotaBochazo (fst (5,8)))
-- Da como resultado True, indicando que si aprobo el parcial