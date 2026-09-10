# =========================================================================
# O QUE É UM PIPELINE DE DADOS?
# =========================================================================
# De forma simples, um "pipeline" (esteira de dados) funciona como uma linha de montagem:
# é um processo automatizado onde o dado entra bruto, passa por etapas de tratamento
# e cálculo, e sai estruturado em um formato final (relatório ou banco).
#
# Segue o clássico fluxo ETL:
# 1. Extração (Extract): Baixar ou ler os dados brutos de uma fonte (URL, API, banco).
# 2. Transformação (Transform): Limpar, calcular métricas e filtrar informações.
# 3. Carga (Load/Export): Salvar o resultado final pronto para consumo em um arquivo.
# =========================================================================

import pandas as pd
from pathlib import Path

# Garante que o arquivo CSV de saída seja salvo na mesma pasta deste script
DIRETORIO_SCRIPT = Path(__file__).resolve().parent
caminho_relatorio = DIRETORIO_SCRIPT / "relatorio_gorjetas.csv"

def pipeline_restaurante():
    # -------------------------------------------------------------
    # [1] EXTRAÇÃO (Extract)
    # -------------------------------------------------------------
    # URL do dataset público clássico 'tips' (gorjetas em restaurantes)
    url = "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv"
    
    # Lê os dados remotos diretamente da web e converte em um DataFrame
    df = pd.read_csv(url)

    # -------------------------------------------------------------
    # [2] TRANSFORMAÇÃO (Transform)
    # -------------------------------------------------------------
    # Isola a coluna "tip" (valor da gorjeta) e soma todos os registros
    total_gorjetas = df["tip"].sum()

    # Cria uma nova tabela (DataFrame) contendo apenas o resumo consolidado
    relatorio = pd.DataFrame({
        "total_gorjetas": [total_gorjetas]
    })

    # -------------------------------------------------------------
    # [3] CARGA / EXPORTAÇÃO (Load)
    # -------------------------------------------------------------
    # Salva o DataFrame consolidado em formato .csv
    # index=False impede a criação da coluna numérica de índice (0, 1, 2...)
    relatorio.to_csv(caminho_relatorio, index=False)

    # Mensagens de status informando a conclusão das etapas
    print("Pipeline executado com sucesso")
    print("Total de gorjetas:", total_gorjetas)

# Executa o pipeline automatizado
pipeline_restaurante()
