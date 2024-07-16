% Mansion Dreadbury

% 1) ¿Quien mato a la tia Agatha?

vivenEnLaMansion(tiaAgatha).
vivenEnLaMansion(mayordomo).
vivenEnLaMansion(charles).

mataA(Asesino, Victima) :-
    esOdiadoPor(Asesino, Victima),
    not(esMasRicoQue(Victima, Asesino)),
    vivenEnLaMansion(Asesino).

%esOdiadoPor(Odiador, Odiado)
esOdiadoPor(tiaAgatha, Persona) :-
    vivenEnLaMansion(Persona),
    Persona \= mayordomo.

esOdiadoPor(mayordomo, Persona) :- 
    esOdiadoPor(tiaAgatha, Persona).

esOdiadoPor(charles, Persona) :- 
    vivenEnLaMansion(Persona),
    not(esOdiadoPor(tiaAgatha, Persona)).

%esMasRicoQue(MenosRico, MasRico)
esMasRicoQue(tiaAgatha, Persona) :-
    vivenEnLaMansion(Persona),
    not(esOdiadoPor(mayordomo, Persona)).

% a) ¿Quien mato a la tia Agatha?
% b) mataA(Quien, tiaAgatha)
%    Quien = tiaAgatha

% 2) 
%- Si existe alguien que odia a milhouse --> NO hace falta agregar nada
% esOdiadoPor(_, milhouse).
% false

%- A quién odia charles.
% esOdiadoPor(charles, Odiado).
% Odiado = mayordomo;

%- El nombre de quien odia a tía Ágatha.
% esOdiadoPor(Nombre, tiaAgatha).
% Nombre = tiaAgatha;
% Nombre = mayordomo.

%- Todos los odiadores y sus odiados.
% esOdiadoPor(Odiador, Odiado).
% Odiador = tiaAgatha, Odiado = tiaAgatha;
% Odiador = tiaAgatha, Odiado = charles;
% Odiador = mayordomo, Odiado = tiaAgatha;
% Odiador = mayordomo, Odiado = charles;
% Odiador = charles  , Odiado = mayordomo;

%- Si es cierto que el mayordomo odia a alguien.
% esOdiadoPor(mayordomo, _).
% true