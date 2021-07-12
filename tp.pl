/*base de conocimientos*/

viveEnLaMansion(tiaAgatha).
viveEnLaMansion(mayordomo).
viveEnLaMansion(charles).

/* odia (el que odia, el odiado)*/

odia(tiaAgatha,Persona):-
    viveEnLaMansion(Persona),
    Persona \= mayordomo.

odia(mayordomo,Persona):-
    odia(tiaAgatha,Persona).

odia(charles,Persona):-
    viveEnLaMansion(Persona),
    not(odia(tiaAgatha,Persona)).

/* esMasRico (unaPersona, otraPersona) */

esMasRico(Persona,tiaAgatha):-
    not(odia(mayordomo,Persona)).

mata(Asesino,Victima):-
    odia(Asesino,Victima),
    esMasRico(Asesino,Victima).

/*1b)
  -quién mató a la tía Agatha. 
     consulta : mata(Asesino, tiaAgatha).
      respuesta: Asesino = mayordomo.

  2b) 
  - Si existe alguien que odie a milhouse.
      consulta : odia(_, milhouse).
      respuesta: False.

  - A quién odia charles.
      consulta : odia(charles, Persona).
      respuesta: Persona = mayordomo.

  - El nombre de quien odia a tía Ágatha.
      consulta : odia(Persona, tiaAgatha).
      respuesta: Persona = tiaAgatha ;
                 Persona = mayordomo ;
                 false.

  - Todos los odiadores y sus odiados.
      consulta : odia(Odiador, Odiados).
      respuesta: Odiador = Odiados, Odiado = tiaAgatha ;
                 Odiador = tiaAgatha, Odiado = charles ;
                 Odiador = mayordomo, Odiado = tiaAgatha ;
                 Odiador = mayordomo, Odiado = charles ;
                 Odiador = charles, Odiado = mayordomo. 

  - Si es cierto que el mayordomo odia a alguien.
      consulta : odia(mayordomo,_).
      respuesta: true ;
                 true.
                 */
    