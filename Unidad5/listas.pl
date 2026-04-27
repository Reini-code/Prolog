% listas.pl

cabeza([H|_],H).
cola([_|T],T).

pertenece(X,[X|_]).
pertenece(X,[_|T]) :- pertenece(X,T).

longitud([],0).
longitud([_|T],N):-
    longitud(T,N1),
    N is N1+1.

concat([],L,L).
concat([H|T],L,[H|R]):-
    concat(T,L,R).
