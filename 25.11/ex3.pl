saritura_calului(2, traseu(Patrat, Precedentul), N):- 
    saritura_calului(1, Precedentul, N), 
    posibil_pasul(Precedentul, Patrat, N). 

saritura_calului(Vizitat, traseu(Patrat, traseu(Precedentul, Traseul_ramas)), N):- 
    Precedentele is Vizitat-1, 
    saritura_calului(Precedentele, traseu(Precedentul, Traseul_ramas), N), 
    posibil_pasul(Precedentul, Patrat, N), 
    nevizitat(Patrat, Traseul_ramas). 

% Base case for 1 square
saritura_calului(1, Patrat, N) :-
    intre(Patrat, N).

posibil_pasul(Precedentul, Patratul, N):-
    pas(Precedentul, Patratul),
    intre(Patratul, N).

pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin-2, Col1 is Col-1.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin-1, Col1 is Col+2.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin+1, Col1 is Col+2.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin+2, Col1 is Col-1.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin+1, Col1 is Col-2.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin-1, Col1 is Col-2.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin-2, Col1 is Col+1.
pas(s(Lin,Col), s(Lin1,Col1)) :- Lin1 is Lin+2, Col1 is Col+1.

intre(s(Lin,Col),N):-Lin>0,Col>0,Lin=<N,Col=<N. 

nevizitat(Patrat, PatratVechi) :-
    Patrat \= PatratVechi.

nevizitat(Patrat, traseu(Patrat1, Traseul_ramas)):-
    Patrat \= Patrat1, 
    nevizitat(Patrat, Traseul_ramas).

% Test queries (commented out to avoid automatic execution)
% ?- saritura_calului(24,X,5), writeln(X).
% ?- saritura_calului(35,X,6), writeln(X).
% ?- saritura_calului(48,X,7), writeln(X).
