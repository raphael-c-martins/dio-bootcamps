# 🐍 Desafio 07 — Conhecendo a Linguagem Python

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Fundamentos de Programação / Sintaxe e Recursos Essenciais

---

## 📋 Sobre o Desafio

Módulo prático dedicado ao aprendizado e consolidação dos conceitos fundamentais da linguagem **Python**. O objetivo é compreender a sintaxe básica, tipagem dinâmica, coerção de tipos, recursos de introspecção do interpretador e manipulação avançada de entrada e saída de dados.

## ✨ Funcionalidades e Tópicos Abordados

- **Tipos Primitivos de Dados (`tipo_de_dados.py`):**
  - Manipulação e operações com números inteiros (`int`), números de ponto flutuante (`float`), valores booleanos (`bool`) e cadeias de caracteres (`str`).
  - Utilização dos construtores internos de tipo.

- **Modo Interativo e Introspecção (`modo-interativo.py`):**
  - Exploração do ambiente interativo (REPL) do Python.
  - Uso da função `dir()` para inspecionar métodos e atributos disponíveis em objetos e escopos.
  - Uso da função `help()` para consulta à documentação integrada da linguagem.
  - Uso da função `type()` para identificação dinâmica do tipo de dados.

- **Variáveis, Constantes e Escopo (`variaveis-e-constantes.py`):**
  - Declaração e atribuição simples e múltipla de variáveis.
  - Convenções de nomenclatura baseadas na **PEP 8**: `snake_case` para variáveis e `UPPER_CASE` para constantes conceituais.
  - Controle de fluxo com estrutura condicional simples (`if` / `else`).

- **Coerção de Tipos e Operações Aritméticas (`conversao-de-tipos.py`):**
  - Conversão explícita (typecasting) entre `float`, `int` e `str`.
  - Diferenciação entre divisão real (`/`, que sempre retorna `float`) e divisão inteira (`//`).

- **Funções de Entrada e Saída (`funcoes-de-entrada-e-saida.py`):**
  - Captura de dados do usuário via console utilizando `input()`.
  - Formatação moderna de mensagens com f-strings (interpolação direta de variáveis).
  - Configuração avançada de parâmetros do `print()`: `sep` (separador personalizado entre itens) e `end` (caractere de finalização de linha).

## 📂 Estrutura de Arquivos

```
desafio07-conhecendo-python/
├── conversao-de-tipos.py           # Coerção explícita de tipos e operadores aritméticos
├── funcoes-de-entrada-e-saida.py   # Entrada via input(), f-strings e parâmetros sep/end
├── modo-interativo.py              # Introspecção do interpretador (dir, help, type)
├── tipo_de_dados.py                # Demonstração de tipos primitivos e construtores
├── variaveis-e-constantes.py       # Boas práticas PEP 8, atribuição múltipla e fluxo condicional
├── README.md                       # Documentação técnica do desafio
└── HISTORICO.md                    # Registro de decisões e histórico de evolução
```

## 🛠️ Tecnologias Utilizadas

| Item | Finalidade |
|---|---|
| **Python 3.x** | Linguagem principal para desenvolvimento dos scripts |
| **PEP 8** | Guia de estilo e boas práticas de código Python |
| **CLI / Terminal** | Execução e validação dos scripts em linha de comando |

## 🚀 Como Executar

Para executar qualquer um dos scripts, utilize o interpretador Python no terminal:

```bash
# Executar script de tipos primitivos
python tipo_de_dados.py

# Executar script de modo interativo e introspecção
python modo-interativo.py

# Executar script de variáveis e constantes
python variaveis-e-constantes.py

# Executar script de conversão de tipos
python conversao-de-tipos.py

# Executar script de funções de entrada e saída
python funcoes-de-entrada-e-saida.py
```

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
