# ================ Operações básicas com o Pandas ================ #
import pandas as pd
import matplotlib.pyplot as plt

nome = ['Ana', 'Bruno', 'Carla', 'Daniel', 'Eduarda', 'Felipe', 'Gabriel', 'Helena', 'Igor', 'Julia']
idade = [23, 34, 29, 42, 26, 31, 45, 28, 37, 22]

# Criando um DataFrame
df = pd.DataFrame({
    'Nome': nome,
    'Idade': idade
})

# Acessando colunas individuais (respeitando maiúsculas/minúsculas)
print("Coluna Nome:")
print(df["Nome"])
print("=================")

print("Coluna Idade:")
print(df["Idade"])
print("=================")


# ================ Exemplos: .mean(), .count() e .describe() ================ #

### 1. Método .mean() (Média aritmética) ###
# Calcula a média aritmética dos valores numéricos (ignora valores nulos automaticamente).
media_idade = df["Idade"].mean()
print(f"Média das idades (.mean()): {media_idade:.2f} anos")
print("=================")


### 2. Método .count() (Contagem de valores não nulos) ###
# Retorna a quantidade de elementos preenchidos (não nulos / não NaN).
# Pode ser aplicado a uma coluna específica ou a todo o DataFrame:
contagem_nomes = df["Nome"].count()
contagem_idades = df["Idade"].count()

print(f"Total de registros preenchidos em 'Nome' (.count()): {contagem_nomes}")
print(f"Total de registros preenchidos em 'Idade' (.count()): {contagem_idades}")
print("\nContagem geral em todas as colunas:")
print(df.count())
print("=================")


### 3. Método .describe() (Resumo estatístico descritivo) ###
# Gera uma visão analítica completa dos dados:
# - count: total de valores válidos
# - mean: média aritmética
# - std: desvio padrão (indica o quanto os dados variam em torno da média)
# - min: menor valor encontrado
# - 25%: 1º quartil (25% dos dados estão abaixo deste valor)
# - 50%: mediana (2º quartil - valor central dos dados)
# - 75%: 3º quartil (75% dos dados estão abaixo deste valor)
# - max: maior valor encontrado

print("Resumo estatístico da coluna 'Idade' (.describe()):")
print(df["Idade"].describe())
print("-----------------")

print("Resumo descritivo geral de todo o DataFrame:")
print(df.describe())
print("-----------------")

# Dica: usando include='all', ele também resume colunas de texto/categóricas
# (mostrando unique: valores únicos, top: mais frequente, freq: frequência do mais comum)
print("Resumo completo incluindo colunas de texto (include='all'):")
print(df.describe(include="all"))
print("=================")

### =========== Agrupamento =========== ###

dados_pecas_pc = {
    "produto":["Placa de vídeo", "Memória RAM", "Processador", "Placa de vídeo", "Memória RAM", "Processador"],
    "preco":[2300, 350, 1200, 2400, 370, 1200]
}

df = pd.DataFrame(dados_pecas_pc)
df.groupby("produto").mean()

media_por_produto = df.groupby("produto")["preco"].mean()

print(media_por_produto)

# Gráfico de Barras
media_por_produto.plot(kind="line")
plt.show()  



