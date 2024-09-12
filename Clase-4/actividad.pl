/* 
    Jesus Jimenez (12/09/2024)
    */

estudiante(juan).
estudiante(maria).
estudiante(pedro).

materia(matematicas, 3).
materia(historia, 4).
materia(fisica, 3).

cursa(juan, matematicas).
cursa(juan, historia).
cursa(maria, matematicas).
cursa(maria, fisica).
cursa(pedro, historia).
cursa(pedro, fisica).

materias_estudiante(Estudiante, Materia) :-
    estudiante(Estudiante),
    cursa(Estudiante, Materia).

estudiantes_materia(Materia, Estudiante) :-
    materia(Materia, _),
    cursa(Estudiante, Materia).

creditos_estudiante(Estudiante, TotalCreditos) :-
    estudiante(Estudiante),
    findall(Creditos, (cursa(Estudiante, Materia), materia(Materia, Creditos)), ListaCreditos),
    sum_list(ListaCreditos, TotalCreditos).






