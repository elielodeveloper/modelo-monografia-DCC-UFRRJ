%Exemplo Matriz N�o Diagonal Dominante
echo on; clc;
clc;
A = [ 3   -2    2;
      1    1    1;
      2    1    1]; %Matriz A

B = [ -3; -4;  -3];         % Matriz B.
P = [ 0;   0;  0];         %Chute inicial.
delta = 1e-12;         %Toler�ncia
max1 = 50;             %N�mero de Itera��es

[X,dX,Pm] = gseid(A,B,P,delta,max1);
%Se��o que imprime os resultados.
Mx1 = 'C�lculos para itera��o de Gauss-Seidel.';
Mx2 = 'Matriz A =';
Mx3 = 'Matriz B � exibido como B` =';
Mx4 = 'Solu��o X � exibido como X`  = ';
clc,echo off,diary output,...
disp(''),disp(Mx1),disp(Pm),...
diary off,echo on
echo off,diary output,...
disp(Mx2),disp(A),disp(Mx3),disp(B'),...
disp('========================================================='),...
disp(Mx4),disp(X'),...
disp('=========================================================='),...
diary off,echo on
xsol=A\B
