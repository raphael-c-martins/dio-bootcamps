# O processamento e limpeza de dados é algo que deve ser feito para garantir a qualidade dos dados que serão utilizados na análise. Isso se dá pela limpeza dos dados, remoção de dados duplicados, tratamento de valores ausentes, etc.

# Exemplo de dados sujos:

#   - Nomes com letras maiúsculas e minúsculas
#   - Espaços em branco
#   - Valores ausentes
#   - Valores duplicados
#   - Formato de datas inconsistente
#   - Valores numéricos representados como strings

# Exemplo prático:

import pandas as pd
import numpy as np

# -------------------------------------------------------------
# 1. DADOS SUJOS (DADOS BRUTOS)
# -------------------------------------------------------------
# Simulação de dados brutos com problemas comuns de entrada:
dados_brutos = {
    'Nome': ['  joão SILVA ', 'MARIA oliveira', 'Carlos EDUARDO', 'MARIA oliveira', '  ana souza', None],
    'Idade': [28, 34, np.nan, 34, 22, 45],
    'Salario': ['R$ 3.500,00', 'R$ 4.200,50', ' 2.800,00 ', 'R$ 4.200,50', 'R$ 1.950,00', 'R$ 5.100,00'],
    'Data_Admissao': ['2023-01-15', '15/02/2023', '2023/03/10', '15/02/2023', '20-04-2023', '2023.05.01']
}

df_sujo = pd.DataFrame(dados_brutos)

print("=== [1] DADOS BRUTOS (SUJOS) ===")
print(df_sujo)
print("\nTipos de dados brutos (dtypes):")
print(df_sujo.dtypes)
print("\n" + "=" * 60 + "\n")

# -------------------------------------------------------------
# 2. PROCESSO DE LIMPEZA E TRATAMENTO
# -------------------------------------------------------------
df_limpo = df_sujo.copy()

# A. Remoção de Registros Duplicados
# Identifica e remove linhas idênticas, mantendo a primeira ocorrência
df_limpo = df_limpo.drop_duplicates()

# B. Tratamento de Strings e Padronização de Nomes
# Preenche valores ausentes em texto com 'Não Informado'
df_limpo['Nome'] = df_limpo['Nome'].fillna('Não Informado')
# .strip() remove espaços nas extremidades; .title() padroniza as iniciais em maiúsculas
df_limpo['Nome'] = df_limpo['Nome'].str.strip().str.title()

# C. Conversão e Limpeza de Valores Numéricos (Salário)
# Remove prefixo 'R$', espaços em branco e ajusta a pontuação decimal para float
df_limpo['Salario'] = (
    df_limpo['Salario']
    .str.replace('R$', '', regex=False)
    .str.replace(' ', '', regex=False)
    .str.replace('.', '', regex=False)
    .str.replace(',', '.', regex=False)
    .astype(float)
)

# D. Tratamento de Valores Numéricos Ausentes (Idade)
# Imputação pela mediana: técnica estatística para preencher nulos sem sofrer distorções de valores extremos (outliers)
mediana_idade = int(df_limpo['Idade'].median())
df_limpo['Idade'] = df_limpo['Idade'].fillna(mediana_idade).astype(int)

# E. Padronização de Datas
# Converte diferentes formatos de texto para o tipo datetime padronizado (AAAA-MM-DD)
df_limpo['Data_Admissao'] = pd.to_datetime(df_limpo['Data_Admissao'], format='mixed', dayfirst=True)

# F. Redefinição dos Índices
# Após a eliminação de duplicatas, reordenamos o índice sequencialmente
df_limpo = df_limpo.reset_index(drop=True)

# -------------------------------------------------------------
# 3. DADOS TRATADOS (RESULTADO FINAL)
# -------------------------------------------------------------
print("=== [2] DADOS TRATADOS E PADRONIZADOS ===")
print(df_limpo)
print("\nTipos de dados pós-tratamento (dtypes):")
print(df_limpo.dtypes)
