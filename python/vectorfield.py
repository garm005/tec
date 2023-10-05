 -*- coding: utf-8 -*-
"""
Script que grafica un campo vectorial

Created on Thu Oct  5 2023

@author: gmruiz
"""

# Importando los modulos
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