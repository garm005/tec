"""
Script que grafica un campo vectorial

Created on Thu Oct  5 2023

@author: gmruiz
"""

# Importando los modulos
from mpl_toolkits.mplot3d import axes3d
import numpy as np
import matplotlib.pyplot as plt

# Estableciendo los limites del dominio espacial
x = np.linspace(0, 6, 50)
y = np.linspace(0, 6, 50)

# Generando el dominio espacial
XX, YY = np.meshgrid(x, y)

# Calculando las componentes del campo vectorial
u = YY**2*np.cos(2**XX)
v = YY**2*np.sin(2**XX)

# Graficando
plt.figure()
plt.quiver(XX, YY, u, v)
plt.xlabel('u')
plt.ylabel('v')
plt.show()

# Caso 3D
x = np.arange(-0.8, 1, 0.2)
y = np.arange(-0.8, 1, 0.2)
z = np.arange(-0.8, 1, 0.8)

# Creando el dominio espacial
[XX,YY,ZZ] = np.meshgrid(x,y,z)

# Calculando las componentes del campo vectorial
u = ZZ/(XX**2 + YY**2 + ZZ**2)
v = XX/(XX**2 + YY**2 + ZZ**2)
w = YY/(XX**2 + YY**2 + ZZ**2)

# Visualizando el campo 
fig = plt.figure()
ax = fig.gca(projection='3d') 
ax.quiver(XX, YY, ZZ, u, v, w, length=0.1, color='blue')
plt.xlabel('u')
plt.ylabel('v')