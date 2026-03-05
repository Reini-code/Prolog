% Hechos

padre(juan, pedro).
padre(pedro, maria).
padre(pedro, luis).

% Regla

abuelo(X,Y) :- padre(X,Z), padre(Z,Y).


% Consultas
% ?- padre(juan,pedro).
% true.

% ?- abuelo(juan,maria).
% true.

% ?- abuelo(juan,luis).
% true.