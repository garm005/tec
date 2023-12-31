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
% Para graficar un campo vectorial en 3D, debemos realizar
% los mismos pasos que hicimos para el caso 2D. Primero
% establecemos los limites del dominio espacial
x = -0.8:0.2:1;
y = -0.8:0.2:1;
z = -0.8:0.8:1;

% Creando el dominio espacial
[XX,YY,ZZ] = meshgrid(x,y,z);

% Calculando las componentes del campo vectorial
u = ZZ./(XX.^2 + YY.^2 + ZZ.^2);
v = XX./(XX.^2 + YY.^2 + ZZ.^2);
w = YY./(XX.^2 + YY.^2 + ZZ.^2);

% Visualizando el campo vectorial
quiver3(XX,YY,ZZ,u,v,w);
axis('equal')
xlabel('u');
ylabel('v');
zlabel('w');