import pandas as pd

# Importando o dataset do Titanic
url = "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv"

df = pd.read_csv(url)

# -------------------------------------------------------------
# Exibe as 5 primeiras linhas
# -------------------------------------------------------------
print(df.head())
print("============================")
# Se quiser mais que 5, só pôr dentro do () outros valores ex: df.head(10)
print(df.head(10))
print("============================")


# -------------------------------------------------------------
# Exibe as informações gerais do dataset
# -------------------------------------------------------------
print(df.info())
print("============================")

# -------------------------------------------------------------
# Exibe as informações estatísticas gerais do dataset
# -------------------------------------------------------------

print(df.describe())
print("============================")

# ================== Tratamento de Valores Ausentes ================== #

# -------------------------------------------------------------
# Verificação de valores ausentes (nulos) em cada coluna
# -------------------------------------------------------------

print("\nVerificação de valores ausentes antes do tratamento:")
print(df.isnull().sum())
print("============================")

# -------------------------------------------------------------
# Eliminação de valores ausentes (nulos) em cada coluna
# -------------------------------------------------------------

df_limpo = df.dropna()

print("\nVerificação de valores ausentes depois do tratamento:")
print(df_limpo.head())
print("============================")

# -------------------------------------------------------------
# Preenchimento de valores ausentes (nulos) em cada coluna
# -------------------------------------------------------------

df["Age"] = df["Age"].fillna(df["Age"].mean())
df["Age"].isnull().sum()
print("============================")

# ============ Normalização e Padronização de Variáveis ============ #

# -------------------------------------------------------------
# Transformando dados para facilitar a análise
# -------------------------------------------------------------

df["Age_log"] =  df["Age"].apply(lambda x: x)
print(df["Age_log"])
print("============================")

# -------------------------------------------------------------
# Escala de dados
# -------------------------------------------------------------

df["Fare_normalized"] = (df["Fare"].min()) / (df['Fare'].max() - df["Fare"].min())
print("============================")

# ============ Automação, Documentação e Validação ============ #

# -------------------------------------------------------------
# Pipilines de dados: É uma sequência de passos que serão executados em ordem. Pode ser usada para automatizar processos de limpeza e transformação de dados.
# -------------------------------------------------------------

def limpar_dados(df):
    df["Age"].fillna(df["Age"].mean(), inplace=True)

    df["Fare_normalized"] = (
        df["Fare"] - df["Fare"].min()
    ) / (df["Fare"].max() - df["Fare"].min())

    return df

df_limpo = limpar_dados(df)
print(df_limpo)
print("============================")

# -------------------------------------------------------------
# Documentação e validação: É importante documentar o processo de limpeza e transformação de dados para garantir a reprodutibilidade e a transparência da análise.
# -------------------------------------------------------------

def validar_dataset(df):
    print("Linhas:", df.shape[0])
    print("Colunas:", df.shape[1])
    print("Valores ausentes:")

    print(df.isnull().sum())

validar_dataset(df_limpo)
print("============================")
    