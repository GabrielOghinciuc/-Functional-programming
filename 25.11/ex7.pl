saritura_calului(1,[(1,1)],_). 

saritura_calului(2,[Patrat,Start],N):-
    saritura_calului(1,[Start],N),
    posibil_pasul(Start,Patrat,N).

saritura_calului(K3,[Patrat,PatratAnterior | Traseul_ramas],N):-
    K is K3-1,
    saritura_calului(K,[PatratAnterior|Traseul_ramas],N),
    posibil_pasul(PatratAnterior,Patrat,N),
    nevizitat(Patrat,Traseul_ramas).

posibil_pasul(Patrat,PatratNou,N):-
    pas(Patrat,PatratNou), 
    intre(PatratNou,N).

pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin-2, Col1 is Col-1.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin-1, Col1 is Col+2.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin+1, Col1 is Col+2.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin+2, Col1 is Col-1.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin+1, Col1 is Col-2.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin-1, Col1 is Col-2.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin+2, Col1 is Col+1.
pas((Lin,Col),(Lin1,Col1)):- Lin1 is Lin-2, Col1 is Col+1.

intre((Lin,Col),N):-
    Lin>0,
    Col>0,
    Lin=<N,
    Col=<N.

nevizitat(Patrat,[CapTraseu]):-
    Patrat \== CapTraseu.
nevizitat(PatratNou,[CapTraseu|Traseul_Ramas]):-
    PatratNou \== CapTraseu,
    nevizitat(PatratNou, Traseul_Ramas).

:- saritura_calului(48,L,7), writeln(L).
