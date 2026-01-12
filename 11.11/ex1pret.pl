desert(inghetata,10).
desert(profiterol,12).
desert(clatite,7).
desert(tort,10).
desert(placinta,8).

felul2(friptura,15).
felul2(snitzel,12).
felul2(copan,4).
felul2(ficatei,7).
felul2(urevhe_de_elefant,20).

garnitura(piure,5).
garnitura(fasole,4).
garnitura(cartofi,3.5).
garnitura(conopida,_):-fall.

felul1(ciorba_de_vacuta,7).
felul1(ciorba_de_perisoare,6).
felul1(ciorba_de_gaina,10).

comanda1(X,Y) :- desert(X,Y).
comanda1(X,Y) :- felul2(X,Y).
comanda1(Y,T) :- garnitura(Y,T).


comanda(Z,T) :- felul1(Z,T).

meniul(X,Y,Z,T,N) :-
    felul1(X,P1),
    felul2(Y,P2),
    garnitura(Z,P3),
    desert(T,P4),
    N is P1 + P2 + P3 + P4.


/*  swipl -f ex1pret.pl */
