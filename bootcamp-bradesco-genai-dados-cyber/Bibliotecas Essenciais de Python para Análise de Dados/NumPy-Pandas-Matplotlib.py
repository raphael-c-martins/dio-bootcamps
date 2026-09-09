# Importando as bibliotecas
# 'as'  é uma forma de dar um apelido para a biblioteca
# Isso facilita a digitação e a leitura do código

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

### Exemplo de uso do NumPy ###
# NumPy é uma biblioteca para computação numérica

# np.array() é uma função que cria um array
# np.sqrt() é uma função que calcula a raiz quadrada
# np.sum() é uma função que calcula a soma

arr = np.array([1, 2, 3, 4, 5])
print(arr)
print(np.sqrt(arr))
print(np.sum(arr))

### Exemplo de uso do Pandas ###
# Pandas é uma biblioteca para análise de dados
# pd.Series() é uma função que cria uma Series
# pd.DataFrame() é uma função que cria um DataFrame

# Series é uma lista com rótulos
dados = {
    'Nome': ['Ana', 'Bruno', 'Carla', 'Daniel'],
    'Idade': [23, 34, 29, 42],
    'Cidade': ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Salvador']
}

df = pd.DataFrame(dados)
print(df)

### Exemplo de uso do Matplotlib ###
# Matplotlib é uma biblioteca para visualização de dados
# plt.plot() é uma função que cria um gráfico
# plt.show() é uma função que exibe o gráfico

plt.plot(df['Nome'], df['Idade'])
plt.show()