# 🔄 Desafio 09 — Estruturas Condicionais e de Repetição em Python

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Fundamentos de Programação / Controle de Fluxo e Iterações

---

## 📋 Sobre o Desafio

Módulo prático dedicado ao aprendizado e consolidação dos mecanismos de **controle de fluxo de execução em Python**. O conteúdo aborda as regras estritas de indentação e blocos de código da linguagem, tomadas de decisão condicionais simples, compostas, aninhadas e ternárias, além de estruturas de repetição iterativas (`for`) e condicionais (`while`) com controle de fluxo avançado.

## ✨ Funcionalidades e Tópicos Abordados

- **Indentação e Blocos de Código (`indentacao-e-blocos.py`):**
  - Regra de indentação obrigatória de 4 espaços como delimitador de escopo e blocos em Python.
  - Estruturação de funções (`def`) e declarações condicionais com escopos bem delimitados.
  - Uso da instrução `pass` como *placeholder* de sintaxe para blocos pendentes de implementação.

- **Estruturas Condicionais (`estruturas-condicionais.py`):**
  - Controle de decisão com `if`, `elif` e `else`.
  - Estruturas condicionais aninhadas simulando regras de negócio para contas bancárias (conta normal com cheque especial, conta universitária e conta especial).
  - Validação de entrada de dados interativa via `input()` (verificação de aprovação, maioridade civil e menu de opções).
  - Aplicação de **If Ternário** (*inline conditional expression*) para atribuições concisas de status.

- **Estruturas de Repetição (`estruturas-de-repeticao.py`):**
  - Comparativo prático entre código sequencial sem laço e uso de repetições com `for`.
  - Iteração sobre objetos iteráveis (strings) com filtragem de caracteres e uso da cláusula `for ... else`.
  - Utilização da função nativa `range()` com 1, 2 e 3 parâmetros (`range(stop)`, `range(start, stop)` e `range(start, stop, step)`), exemplificando a geração de tabuadas.
  - Laço `while` para repetições com critério de parada indeterminado (menu de terminal).
  - Laço infinito `while True` com interrupção controlada por `break` e verificação de números pares e ímpares.

## 📂 Estrutura de Arquivos

```
desafio09-estruturas-condicionais-e-repeticao/
├── estruturas-condicionais.py    # Tomadas de decisão (if/elif/else, aninhamentos e if ternário)
├── estruturas-de-repeticao.py      # Laços de repetição (for, while, range, break, for..else)
├── indentacao-e-blocos.py          # Regras de indentação e definição de escopo com pass
├── README.md                      # Documentação técnica do desafio
└── HISTORICO.md                   # Registro de decisões e histórico de evolução
```

## 🛠️ Tecnologias Utilizadas

| Item | Finalidade |
|---|---|
| **Python 3.x** | Interpretador e execução dos scripts de controle de fluxo |
| **PEP 8** | Padrões de indentação (4 espaços) e legibilidade de código |
| **CLI / Terminal** | Execução e validação interativa dos fluxos |

## 🚀 Como Executar

Para executar os scripts, utilize o terminal a partir da pasta do desafio:

```bash
# Executar script sobre indentação e blocos
python indentacao-e-blocos.py

# Executar script de estruturas condicionais
python estruturas-condicionais.py

# Executar script de estruturas de repetição
python estruturas-de-repeticao.py
```

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
