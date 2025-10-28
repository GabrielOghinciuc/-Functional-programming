bal(X,Y,Z) :- baiat(X), fata(Y), transport(Z), iubeste(X,Y), iubeste(Y,X).

baiat(ion).
baiat(mihai).
baiat(sebastian).
baiat(george).

fata(ioana).
fata(mihaela).
fata(alina).
fata(monica).
fata(alexandra).

transport(taxi).
transport(bolt).
transport(autobuz).
transport(polo).

iubeste(ion,ioana).
iubeste(ion,monica).
iubeste(ioana,ion).
iubeste(monica,ion).

/* swipl -f p2.pl */
