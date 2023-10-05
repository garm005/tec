%% Caso 2D
% Para ello, establecemos
% los limites del dominio con los vectores x, y.
% en este caso el dominio comienza en (0,0) y
% se encuentra acotado por la coordenada (6,6). El 
% dominio lo dividiremos en 50 puntos para cada eje.
x = linspace(0,6,50);
y = linspace(0,6,50);

% Vamos a crear el dominio espacial de nuestro
% campo vectorial, es decir, vamos a crear la 
% malla numérica.
[XX,YY] = meshgrid(x,y);

% A continuación vamos a calcular la componentes
% del campo vectorial
u = YY.^2.*cos(2.*XX);
v = YY.^2.*sin(2.*XX);

% Visualizando el campo vectorial
quiver(XX,YY,u,v,'red');
xlabel('u');
ylabel('v');

%% Caso 3D