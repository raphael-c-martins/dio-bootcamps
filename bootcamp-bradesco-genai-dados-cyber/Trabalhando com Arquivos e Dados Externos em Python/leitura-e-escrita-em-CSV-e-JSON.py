# Criando um arquivo CSV

import csv

dados = [
    [["Data", "Produto", "Preço", "Quantidade"]],
    ["2024-01-01", "Produto A", "100.00", "10"],
    ["2024-01-02", "Produto B", "200.00", "5"],
    ["2024-01-03", "Produto C", "300.00", "8"]
]

with open("vendas.csv", "w", newline="") as arquivo:
    escritor = csv.writer(arquivo)
    escritor.writerows(dados)

    print("Arquivo 'vendas.csv' criado com sucesso.")
    
# Lendo um CSV

with open("vendas.csv", "r") as arquivo:
    leitor = csv.reader(arquivo)

    for linha in leitor:
        print(linha)


### Criando um arquivo JSON ###

import json

with open("vendas.json", "w") as arquivo:
    json.dump(dados, arquivo)

    print("Arquivo 'vendas.json' criado com sucesso.")

### Lendo um JSON ###

with open("vendas.json", "r") as arquivo:
    dados = json.load(arquivo)

    print(dados)
