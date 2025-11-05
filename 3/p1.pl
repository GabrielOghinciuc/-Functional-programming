animal(X) :- pisica(X).
animal(X) :- caine(X).
animal(X) :- cal(X).
zboara(X) :- pasare(X),not(X==strut), not(X==pinguin).
animal(Y) :- iepure(Y).

pisica(tom).
pisica(garfield).
pisica(tigrutza).
pisica(rex).

caine(pif).
caine(azorel).
caine(marcel).

cal(ivan).
cal(alex).

pasare(cioara).
pasare(porumbel).
pasare(pinguin).
pasare(strut).

iepure(marcel).
iepure(pufi).
/* swipl -f p1.pl*/
