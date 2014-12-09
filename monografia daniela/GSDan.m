echo on; clc;
clc;
% - - - - - - - - - - - - - - - - - - - - - - - - - - -
%Este programa resolve um sistema linear Ax = B.
% Onde A � diagonalmente dominante.
% A � uma matriz nxn, B � um vector n-dimensional.
% O m�todo � de Gauss-Seidel itera��o.
%Observa��o%. gseid.m � usado para o algoritmo 3.5
% - - - - - - - - - - - - - - - - - - - - - - - - - - -
pause % Press any key to perform Gauss-Seidel iteration.
clc; clear all; format long;

A = [ 10   2    -3    2;
      2   -15    3   -2;
      1   -3    20    2;
      2    2    -1    30];          %Matriz A

B = [ 32; -59;  -38;  160];         % Matriz B.

pause % Pressione qualquer tecla para continuar..

clc;

P = [ 0;   0;  0;  0];         %Chute inicial.
delta = 1e-12;         %Toler�ncia
max1 = 50;             %N�mero de Itera��es

[X,dX,Pm] = gseid(A,B,P,delta,max1);

pause % Pressione qualquer tecla para continuar.

clc;
%Se��o que imprime os resultados.
Mx1 = 'C�lculos para itera��o de Gauss-Seidel.';
Mx2 = '     x                  y                  z';
Mx3 = 'Matriz A =';
Mx4 = 'Matriz B � exibido como B` =';
Mx5 = 'Solu��o X � exibido como X`  = ';
Mx6 = 'The accuracy is  +- dX,  where dX` = ';
clc,echo off,diary output,...
disp(''),disp(Mx1),disp(Mx2),disp(Pm),...
diary off,echo on
pause % Pressione qualquer tecla para continuar..
clc,echo off,diary output,...
disp(Mx3),disp(A),disp(Mx4),disp(B'),...
disp(Mx5),disp(X'),disp(Mx6),disp(dX'),...
disp('Itera��o converge linearmente para a solu��o.'),...
diary off,echo on
pause % Pressione qualquer tecla para sair.

clc;
