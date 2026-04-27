% estructuras.pl

persona(juan,21,sistemas).
persona(ana,22,software).
persona(luis,20,redes).

es_estudiante(Nombre):-
    persona(Nombre,_,_).

misma_carrera(X,Y):-
    persona(X,_,C),
    persona(Y,_,C),
    X \= Y.
