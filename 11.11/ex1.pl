desert(inghetata).
desert(profiterol).
desert(clatite).
desert(tort).
desert(placinta).

felul2(friptura).
felul2(snitzel).
felul2(copan).
felul2(ficatei).
felul2(urevhe_de_elefant).

garnitura(piure).
garnitura(fasole).
garnitura(cartofi).
garnitura(conopida):-fall.

felul1(ciorba_de_vacuta).
felul1(ciorba_de_perisoare).
felul1(ciorba_de_gaina).

comanda1(X) :- desert(X).
comanda1(X) :- felul2(X).
comanda1(Y) :- garnitura(Y).
/* scrieti x in loc de z , experiment */

comanda(Z) :- felul1(Z).

meniul(X,Y,Z,T) :- felul1(X), felul2(Y), garnitura(Z), desert(T).

/*  swipl -f ex1.pl */
