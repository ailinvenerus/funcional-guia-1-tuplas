-- Siguiendo con el dominio del ejercicio anterior, tenemos ahora dos parciales con dos
--recuperatorios, lo representamos mediante un par de pares
--((parc1,parc2),(recup1,recup2)).
--Si una persona no rindió un recuperatorio, entonces ponemos un "-1" en el lugar
--correspondiente.
--Observamos que con la codificación elegida, siempre la mejor nota es el máximo entre
--nota del parcial y nota del recuperatorio.
--Considerar que vale recuperar para promocionar.
--En este ejercicio vale usar las funciones que se definieron para el anterior.
--Definir la función notasFinales que recibe un par de pares y devuelve el par que
--corresponde a las notas finales del alumno para el 1er y el 2do parcial. 

noRecupero ((parc1, parc2),(recup1, recup2)) = ((parc1, parc2), (-1,-1))
notasFinales ((parc1, parc2), (recup1, recup2)) = (max parc1 recup1, max parc2 recup2)


--Escribir la consulta que indica si un alumno cuyas notas son ((2,7),(6,-1)) recursa o
--no. O sea, la respuesta debe ser True si recursa, y False si no recursa.
--Usar las funciones definidas en este punto y el anterior, y composición.
--La consulta debe tener esta forma
--Main> (... algo ...) ((2,7),(6,-1)) 

esNotaBochazo = (<4)
aprobo (nota1,nota2) = not (esNotaBochazo (fst (nota1,nota2))) && not (esNotaBochazo (snd (nota1, nota2)))
notaMinima6 (nota1, nota2) = fst (nota1,nota2) >5 && snd (nota1,nota2) >5
promociono (nota1, nota2) = (nota1+nota2) >13 && notaMinima6 (nota1,nota2)
recursa ((parc1,parc2),(recup1,recup2)) = not (aprobo (notasFinales ((parc1,parc2),(recup1,recup2))))


--Escribir la consulta que indica si un alumno cuyas notas son ((2,7),(6,-1)) recuperó
--el primer parcial. Usar composición. La consulta debe tener esta forma
--Main> (... algo ...) ((2,7),(6,-1)) 

recuperoPrimerParcial ((parc1,parc2),(recup1,recup2)) = fst (notasFinales ((parc1,parc2),(recup1,recup2))) > fst (parc1,parc2)


--Definir la función recuperoDeGusto que dado el par de pares que representa a un
--alumno, devuelve True si el alumno, pudiendo promocionar con los parciales (o sea
--sin recup.), igual rindió al menos un recup.
--Vale definir funciones auxiliares.
--Hacer una definición que no use pattern matching, en las eventuales funciones
--auxiliares tampoco; o sea, manejarse siempre con fst y snd.

recuperoDeGusto ((parc1,parc2),(recup1,recup2)) = promociono (parc1, parc2) && (recup1 > -1 || recup2 > -1)





