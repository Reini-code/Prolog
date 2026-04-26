padre(juan, ana).
padre(juan, pedro).
madre(maria, ana).
madre(maria, pedro).

abuelo(X,Y) :- padre(X,Z), padre(Z,Y).
