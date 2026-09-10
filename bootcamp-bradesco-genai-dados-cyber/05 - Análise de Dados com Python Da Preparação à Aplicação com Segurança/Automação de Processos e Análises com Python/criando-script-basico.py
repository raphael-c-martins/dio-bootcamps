# Exemplo de automação de processos simples
# O usuário pode alterar os valores de vendas.txt e o script calculará o total.

import csv
from pathlib import Path
import requests
import logging

# Obtém o diretório exato onde este script .py está localizado
DIRETORIO_SCRIPT = Path(__file__).resolve().parent

# Define os caminhos relativos à pasta do script
caminho_vendas = DIRETORIO_SCRIPT / "vendas.txt"
caminho_csv = DIRETORIO_SCRIPT / "dados_api.csv"
caminho_bd = DIRETORIO_SCRIPT / "dados.db"
caminho_log = DIRETORIO_SCRIPT / "meu_log.log"

# Implementando monitoramento por logs
logging.basicConfig(filename=caminho_log, level=logging.INFO, encoding="utf-8")
logging.info("Script iniciado")

total = 0

with open(caminho_vendas, "w", encoding="utf-8") as f:
    f.write("17\n40\n33\n150\n22\n85")

with open(caminho_vendas, "r", encoding="utf-8") as f:
    for linha in f:
        valor = int(linha.strip())
        total += valor

print(f"Total de vendas: {total}")

# ===== Integrando com API e banco de dados ===== #

# Usando API pública para obter dados
url = "https://api.agify.io?name=Raphael"

response = requests.get(url)
data = response.json()

print("Name:", data["name"])
print("Age:", data["age"])
print("Count:", data["count"])

# Salvando esses dados em um arquivo CSV
with open(caminho_csv, "w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f)
    writer.writerow(["Name", "Age", "Count"])
    writer.writerow([data["name"], data["age"], data["count"]])

# ===== Criando e inserindo dados em um BD (Banco de Dados) ===== #

import sqlite3

conn = sqlite3.connect(caminho_bd)

cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    idade INTEGER,
    contagem INTEGER
)
""")

conn.commit()

print("Tabela criada com sucesso")

cursor.execute(
    "INSERT INTO usuarios (nome, idade, contagem) VALUES (?, ?, ?)", (data['name'], data['age'], data['count'])
)

conn.commit()

print("Dados inseridos com sucesso")

# Consultando os dados do banco de dados
cursor.execute("SELECT * FROM usuarios")

print("\nDados do banco de dados:")
for row in cursor.fetchall():
    print(row)

conn.close()

# ===== Agendamento de tarefas ===== #

import datetime

hora_atual = datetime.datetime.now()

print("Gerando relátorio...")
print("Script finalizado em: ", hora_atual)

# ===== Cron Jobs ===== #
# É um agendador de tarefas do Linux.
# No Windows, usamos o Agendador de Tarefas do Windows.
# No macOS, usamos o Cron ou o Launchd.

def gerar_relatorio():

    vendas = [120, 200, 150, 300]

    total = sum(vendas)

    agora = datetime.datetime.now()

    print("Total de vendas: ", total)
    print("Script finalizado em: ", agora)

gerar_relatorio()


logging.info("Script finalizado")
    



