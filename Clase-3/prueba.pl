/* 
    Jesus Jimenez (10/09/2024)
    */

par(X) :- X mod 2 =:= 0.

tiene(juan, bicicleta).
tiene(juan, coche).
tiene(ana, coche).
tiene(ana, patineta).
tiene(pedro, coche).
tiene(pedro, triciclo).


cuadrado(X,R):- R is X * X.

media(A,B,M) :- M is (A+B) / 2.

factorial(0,1).
factorial(N,R):-
    N1 is N - 1,
    factorial(N1,R1),
    R is N * R1.


