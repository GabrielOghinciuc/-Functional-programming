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
    write('Avem'),
    writeln(P1),
    writeln('Cate portii?'),
    readln(N1),
    felul2(Y,P2),
    write('Pentru felul 2 avem'),
    writeln(P2),
    writeln('Cate portii doriti?'),
    readln(N2),
    garnitura(Z,P3),
    write('Drept garnitura va ofer'),
    writeln(P3),
    writeln('Cate garnituri?'),
    readln(N3),
    desert(T,P4),
    write('Iar ca desert va oferim'),
    writeln(P4),
    writeln('Cate portii din acest desert?'),
    readln(N4),
    write('In acest caz aveti de achitat cativa lei,doar :'),
    N is N1*P1+N2*P2+N3*P3+N4*P4,
    writeln(N).


/*  swipl -f ex1pret.pl */
