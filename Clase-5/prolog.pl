/* 
    Jesus Jimenez (17/09/2024)
    */

tiempo(presente).
tiempo(pasado).
tiempo(futuro).

persona(primera).
persona(segunda).
persona(tercera).

numero(singular).
numero(plural).

'to be'.
'to walk'.
'to eat'.

ser(presente, primera, singular, 'am').
ser(presente, segunda, singular, 'are').
ser(presente, tercera, singular, 'is').
ser(presente, primera, plural, 'are').
ser(presente, segunda, plural, 'are').
ser(presente, tercera, plural, 'are').

ser(pasado, primera, singular, 'was').
ser(pasado, segunda, singular, 'were').
ser(pasado, tercera, singular, 'was').
ser(pasado, primera, plural, 'were').
ser(pasado, segunda, plural, 'were').
ser(pasado, tercera, plural, 'were').

ser(futuro, primera, singular, 'will be').
ser(futuro, segunda, singular, 'will be').
ser(futuro, tercera, singular, 'will be').
ser(futuro, primera, plural, 'will be').
ser(futuro, segunda, plural, 'will be').
ser(futuro, tercera, plural, 'will be').

caminar(presente, primera, singular, 'walk').
caminar(presente, segunda, singular, 'walk').
caminar(presente, tercera, singular, 'walks').
caminar(presente, primera, plural, 'walk').
caminar(presente, segunda, plural, 'walk').
caminar(presente, tercera, plural, 'walk').

caminar(pasado, primera, singular, 'walked').
caminar(pasado, segunda, singular, 'walked').
caminar(pasado, tercera, singular, 'walked').
caminar(pasado, primera, plural, 'walked').
caminar(pasado, segunda, plural, 'walked').
caminar(pasado, tercera, plural, 'walked').

caminar(futuro, primera, singular, 'will walk').
caminar(futuro, segunda, singular, 'will walk').
caminar(futuro, tercera, singular, 'will walk').
caminar(futuro, primera, plural, 'will walk').
caminar(futuro, segunda, plural, 'will walk').
caminar(futuro, tercera, plural, 'will walk').

comer(presente, primera, singular, 'eat').
comer(presente, segunda, singular, 'eat').
comer(presente, tercera, singular, 'eats').
comer(presente, primera, plural, 'eat').
comer(presente, segunda, plural, 'eat').
comer(presente, tercera, plural, 'eat').

comer(pasado, primera, singular, 'ate').
comer(pasado, segunda, singular, 'ate').
comer(pasado, tercera, singular, 'ate').
comer(pasado, primera, plural, 'ate').
comer(pasado, segunda, plural, 'ate').
comer(pasado, tercera, plural, 'ate').

comer(futuro, primera, singular, 'will eat').
comer(futuro, segunda, singular, 'will eat').
comer(futuro, tercera, singular, 'will eat').
comer(futuro, primera, plural, 'will eat').
comer(futuro, segunda, plural, 'will eat').
comer(futuro, tercera, plural, 'will eat').

conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion) :-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (Verbo = 'to be' -> 
        ser(Tiempo, Persona, Numero, Conjugacion)
    ; Verbo = 'to walk' ->
        caminar(Tiempo, Persona, Numero, Conjugacion)
    ; Verbo = 'to eat' ->
        comer(Tiempo, Persona, Numero, Conjugacion)
    ; 
        Conjugacion = Verbo
    ).