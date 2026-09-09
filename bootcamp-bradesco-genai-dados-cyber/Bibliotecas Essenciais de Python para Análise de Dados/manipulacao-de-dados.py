# ====================== Matplotlib ===================== #

import matplotlib.pyplot as plt


A = [1, 2, 3, 4, 5]
B = [10, 20, 25, 30, 33]

plt.plot(A, B, color="red", linestyle="--", marker="o")
plt.show()

### Vários gráficos em uma só janela ### 

X = [1, 2, 3, 4, 5]
y = [10, 20, 25, 30, 33]

# Cria uma grade de 2 linhas x 3 colunas (6 posições)
fig, axs = plt.subplots(2, 3, figsize=(12, 7))

# 1. Linha
axs[0, 0].plot(X, y, color="red", linestyle="--", marker="o")
axs[0, 0].set_title("Gráfico de Linha")

# 2. Dispersão
axs[0, 1].scatter(X, y, color="green", marker="x")
axs[0, 1].set_title("Dispersão")

# 3. Barras
axs[0, 2].bar(X, y, color="black", edgecolor="black", linewidth=1.5, alpha=0.7)
axs[0, 2].set_title("Barras")

# 4. Histograma
axs[1, 0].hist(y, color="purple", edgecolor="black", linewidth=1.5, alpha=0.7)
axs[1, 0].set_title("Histograma")

# 5. Boxplot
axs[1, 1].boxplot(y)
axs[1, 1].set_title("Boxplot")

# 6. Área
axs[1, 2].fill_between(X, y, color="green", alpha=0.3)
axs[1, 2].set_title("Área")

plt.tight_layout()  # Ajusta o espaçamento entre os gráficos automaticamente
plt.show()

# ====================== NumPy ===================== #

import numpy as np

# Array 1D
arr1 = np.array([1, 2, 3, 4, 5])
print(arr1)

# Array 2D
arr2 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(arr2)

# Operações
print(arr1 * 2)
print(arr1 + 2)
print(arr1 - 2)
print(arr1 / 2)

# ====================== Pandas ===================== #

import pandas as pd

nome = ['Ana', 'Bruno', 'Carla', 'Daniel', 'Eduarda', 'Felipe', 'Gabriel', 'Helena', 'Igor', 'Julia']
idade = [23, 34, 29, 42, 26, 31, 45, 28, 37, 22]

# Criando um DataFrame
df = pd.DataFrame({
    'Nome': nome,
    'Idade': idade
})

print("=================")
print(df)
print("=================")
print(df.head())  # Exibe as primeiras 5 linhas
print("=================")
print(df.tail())  # Exibe as últimas 5 linhas
print("=================")
print(df.info())  # Exibe informações sobre o DataFrame
print("=================")
print(df.describe())  # Exibe estatísticas descritivas
print("=================")

# ================ Leitura e escrita de arquivos ================ #

# Ler um arquivo CSV
df.to_csv("dados.csv", index=False)
print("Arquivo CSV criado com sucesso!")
print("=================")

# Ler um arquivo Excel
df.to_excel("dados.xlsx", index=False)

# Ler um arquivo JSON
df.to_json("dados.json", orient="records")



