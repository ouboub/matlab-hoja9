%% Prácticas de Matlab
%% Método de disparo
%% Hoja 9
% *Nombre:*
% 
% *Apellido:*
% 
% *DNI:*
% 
% *Email:*
%% 
% % 
% %% Práctica 1 (Implementación del método del disparo lineal)
% Crea una función  *midisplin.m* que, tomando como datos los coeficientes  
% $p(t)$,  $q(t)$, $r(t)$ de la ecuación diferencial, implemente el método del 
% disparo lineal para cada una de las condiciones de contorno siguientes:
% 
% $$    \begin{array}{ccc}  x(t_{0})  &=&a, \qquad x(T)=b\\  x'(t_{0}) &=&a, 
% \qquad x(T)=b\\  x(t_{0})  &=&a, \qquad x'(T)=b\\  x'(t_{0}) &=&a, \qquad x'(T)=b    
% \end{array}$$
% 
% y que responda a la sintaxis
% 
% |[t,u]=midisplin(p,q,r,interval,a,b,N,c1,c2)|
% 
% *Indicación*: utiliza dos variables de entrada adicionales $C1$ y $C2$ respectivamente 
% para indicar cuál es la condición de contorno prescrita en $t_{0}$ y $T$ respectivamente. 
% Utiliza el convenio de que, cuando uno de estos parámetros es 0, entonces estamos 
% prefijando el valor de la función, mientras que si es 1 entonces estamos prefijando 
% el valor de la derivada. Como método de resolución de los problemas de valor 
% inicial, emplea el método de Runge--Kutta de orden 4.
%% Práctica 2 Resolución (D-D)
% Utiliza las implementaciones anteriores para resolver los siguientes problemas 
% de contorno. Explora las soluciones modificando las condiciones de contorno. 
% (N=10)
% 
% $$x''(t)=4(x(t)-t), \quad 0\leq t\leq 1 \quad    x(0)=-5, x(1)=2$$
% 
% *Solución*

clear all
close all
disp('H7: cod UB P1')
p=@(t)[0*t];
q=@(t)[4+0*t];
r=@(t)[-4*t];
intv=[0 1];
a=0;
b=2;
c1=0;
c2=0;
N=500;
[t1,u1]=midisplin(p,q,r,intv,a,b,N,c1,c2);
figure(1)
grid on
hold on
plot(t1,u1(1,:),'r-*'), 
plot(t1,u1(2,:),'b-*'), 
legend('solucion','derivada')
grid on
title('$x^{\prime\prime}(t)=4(x(t)-t) \quad 0\leq t\leq 1 \qquad     x(0)=0 \quad x(1)=2$','Interpreter','latex')
%% Práctica 3 Resolución (D-N)
% Utiliza las implementaciones anteriores para resolver los siguientes problemas 
% de contorno. Explora las soluciones modificando las condiciones de contorno. 
% (N=10)
% 
% $$$x''(t) =3x'(t) +2x(t)+3\cos(t), \quad 0\leq     t \leq 5, x(0)=-2, x'(5)=1$$
% 
% *Solución*

clear all
close all
disp('H7: cod UB P2')
p=@(t)[3+0*t];
q=@(t)[2+0*t];
r=@(t)[3*cos(t)];
intv=[0 5];
a=-2;
b=1;
c1=0;
c2=1;
N=500;
[t1,u1]=midisplin(p,q,r,intv,a,b,N,c1,c2);
figure(1)
grid on
hold on
plot(t1,u1(1,:),'r-*'), 
plot(t1,u1(2,:),'b-*'), 
legend('solucion','derivada')
grid on
title('$x^{\prime\prime}(t) =3x^{\prime}(t) +2x(t)+3\cos(t) \quad     0\leq     t \leq 5, \quad x(0)=-2, \quad x^{\prime}(5)=1$','Interpreter','latex')
hold off
%% Práctica 4 Resolución (N-D)
% Utiliza las implementaciones anteriores para resolver los siguientes problemas 
% de contorno. Explora las soluciones modificando las condiciones de contorno. 
% (N=10)
% 
% $$x''(t) = \cos(t) x(t)+t, \quad 0\leq t \leq 10,    x'(0)=-2, x(10)=-1.$$
% 
% *Solución*

clear all
close all
disp('H7:  cod UB P3')
p=@(t)[0*t];
q=@(t)[cos(t)];
r=@(t)[t];
intv=[0 10];
a=-2;
b=1;
c1=1;
c2=0;
N=500;
[t1,u1]=midisplin(p,q,r,intv,a,b,N,c1,c2);
figure(1)
grid on
hold on
plot(t1,u1(1,:),'r-*'), 
plot(t1,u1(2,:),'b-*'), 
legend('solucion','derivada')
grid on

title('$x^{\prime\prime}(t) = \cos(t) x(t)+t, \quad 0\leq t \leq    10 \quad    x^{\prime}(0)=-2, \quad x(10)=-1$','Interpreter','latex')

hold off
%% Práctica 5 Resolución (N-N)
% Utiliza las implementaciones anteriores para resolver los siguientes problemas 
% de contorno. Explora las soluciones modificando las condiciones de contorno. 
% (N=10)
% 
% $$$x''(t) =(1-\sin(t))x'(t) +\cos(t) x(t)+\sin(t),    \quad 0\leq t \leq 1, 
% x'(0)=-2, x'(10)=-1.$$
% 
% *Solución:*

clear all
close all
disp('H7:  cod UB P4')
p=@(t)[1-sin(t)];
q=@(t)[cos(t)];
r=@(t)[sin(t)];
intv=[0 10];
a=-2;
b=-1;
c1=1;
c2=1;
N=500;
[t1,u1]=midisplin(p,q,r,intv,a,b,N,c1,c2);
figure(1)
grid on
hold on
plot(t1,u1(1,:),'r-*'), 
plot(t1,u1(2,:),'b-*'), 
legend('solucion','derivada')
grid on
title('$x^{\prime\prime}(t) =(1-\sin(t))x^{\prime}(t) + \cos(t) x(t) + \sin(t) \quad 0\leq t \leq 1 \quad x^{\prime}(0)=-2, \quad x^{\prime}(10)=-1$','Interpreter','latex')
hold off
%% Apéndice

function [t,u]=midisplin(p,q,r,interval,a,b,N,c1,c2);
end
