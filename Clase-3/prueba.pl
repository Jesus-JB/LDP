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

fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,R):-
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,R1),
    fibonacci(N2,R2),
    R is R1 + R2.


mcd(X,0,X).
mcd(X,Y,M):-
    X1 is X mod Y,
    mcd(Y,X1,M).

poblacion('Francia',60000000).
poblacion('Espana',45000000).
poblacion('Holanda',24068000).
poblacion('Alemania',82096000).
area('Francia',640000).
area('Espana',500000).
area('Holanda',439000).
area('Alemania',1304000).
densidad(Pais,D):-
    poblacion(Pais,P),
    area(Pais,A),
    D is P / A.