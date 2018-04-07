--Definir las funciones fst3, snd3, trd3, que dada una tupla de 3 elementos devuelva el elemento correspondiente

unaTupla = ("soy el primero", "soy el segundo", "soy el tercero")

fst3 (primero, _, _) = primero
snd3 (_, segundo, _) = segundo
trd3 (_, _, tercero) = tercero
