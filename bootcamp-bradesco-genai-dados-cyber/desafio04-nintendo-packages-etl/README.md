# 📦 Desafio 04 — Nintendo Packages ETL (Excel / Power Query)

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Engenharia de Dados / Pipeline ETL em Planilhas

---

## 📋 Sobre o Desafio

Desenvolvimento de um fluxo de **Extração, Transformação e Carga (ETL)** aplicado a relatórios de pacotes de envio e vendas de jogos da plataforma **Nintendo Switch**. O projeto simula a ingestão de dados brutos provenientes de extrações do SAP (`SAP-EXTRACT`), realizando o tratamento, limpeza e enriquecimento de dados.

## ✨ Funcionalidades e Etapas do ETL

- **Extração (Extract):** Leitura de dados brutos de envio (`nintendo-sending-packages.xlsx`) com campos como `Package Id`, `Game`, `Send Date`, `Region`, `Order Status`, `Stock Quantity`, `Unit Price`, `Store Manager`, `Batch`, `Age Rating` e `Publisher`.
- **Transformação (Transform):**
  - Separação de strings compostas (extração de nome do jogo e console a partir da coluna `Game`).
  - Padronização de códigos de região (conversão de `EN`, `PT`, `JP` para `English`, `Portuguese`, `Japanese`).
  - Conversão de tipos de dados e cálculo de faturamento total (`Total Price = Stock Quantity * Unit Price`).
  - Limpeza de formatação de lotes (`Batch-202` -> `202`).
- **Carga (Load):** Geração da base consolidada e enriquecida (`nintendo-packages-etl.xlsx`) pronta para consumo em dashboards ou modelos analíticos.

## 📂 Estrutura de Arquivos

```
desafio04-nintendo-packages-etl/
├── nintendo-sending-packages.xlsx   # Base de entrada bruta (Raw Data - SAP Extract)
├── nintendo-packages-etl.xlsx       # Base tratada pós-processamento ETL
├── README.md                        # Este arquivo
└── HISTORICO.md                     # Registro de decisões e evolução
```

## 🛠️ Tecnologias Utilizadas

- **Microsoft Excel / Power Query:** Transformação de dados, manipulação de texto e cálculos de faturamento.
- **Conceitos de ETL:** Pipeline de dados, sanitização, enriquecimento e modelagem tabular.

## 🚀 Como Utilizar

1. Consulte o arquivo de entrada `nintendo-sending-packages.xlsx` para inspecionar os dados brutos de origem.
2. Abra `nintendo-packages-etl.xlsx` para analisar o resultado pós-transformação com as colunas calculadas e padronizadas.

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
