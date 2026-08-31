# 🔤 Desafio 10 — Manipulação de Strings em Python

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Fundamentos de Programação / Processamento e Formatação de Texto

---

## 📋 Sobre o Desafio

Módulo prático focado no domínio dos recursos de **manipulação, formatação e fatiamento de strings em Python**. A linguagem oferece métodos nativos de alta performance para tratamento textual, interpolação de variáveis (desde o estilo clássico com `%` até as modernas `f-strings`), indexação avançada com fatiamento (*slicing*) e construção de blocos de texto multilinha com strings triplas.

## ✨ Funcionalidades e Tópicos Abordados

- **Métodos Úteis para Tratamento de Strings (`strings-e-fatiamentos.py`):**
  - Transformação de caixa: `upper()` (maiúsculas), `lower()` (minúsculas) e `title()` (primeira letra maiúscula por palavra).
  - Remoção de espaços em branco e caracteres indesejados: `strip()` (ambas as extremidades), `lstrip()` (início/esquerda) e `rstrip()` (fim/direita).
  - Centralização e junção textual: `center(largura, preenchimento)` para alinhamento decorativo e `.join()` para concatenar sequências de caracteres com delimitadores definidos.

- **Interpolação e Formatação de Variáveis (`interpolacao-de-variaveis.py`):**
  - **Old Style (`%`):** Formatação clássica herdada da linguagem C utilizando `%s` (strings), `%d` (inteiros) e `%f` (pontos flutuantes).
  - **Método `.format()`:** Interpolação moderna posicional, por índice numérico (`{0}`, `{1}`), por argumentos nomeados e por desempacotamento de dicionários (`**kwargs`).
  - **F-Strings (`f"..."`):** Sintaxe recomendada pelo ecossistema Python moderno (Python 3.6+), permitindo inserção direta de variáveis e execução de expressões em tempo de execução.
  - **Formatação Numérica e de Ponto Flutuante:** Controle de casas decimais e alinhamento de precisão (ex: `{PI:.2f}`, `{PI:10.4f}`).

- **Fatiamento e Indexação Avançada (`fatiamento-de-string.py`):**
  - Acesso posicional direto com índices positivos e negativos (`nome[0]`, `nome[-1]`).
  - Sintaxe de fatiamento `[start:stop:step]` para extração precisa de substrings.
  - Omissão de delimitadores para cópia integral (`[:]`), seleção a partir do final (`[-3:]`) e inversão completa de strings com passo negativo (`[::-1]`).

- **Strings Multilinha e Strings Triplas (`string-multiplas-linhas.py`):**
  - Declaração de blocos textuais extensos utilizando aspas triplas (`'''` ou `"""`), preservando recuos, tabulações e quebras de linha nativas.
  - Combinação de strings triplas com f-strings para templates dinâmicos.
  - Aplicação prática em interfaces de terminal (ex: menu de autoatendimento bancário).

## 📂 Estrutura de Arquivos

```
desafio10-Manipulando-Strings-com-Python/
├── fatiamento-de-string.py        # Indexação direta, intervalos de fatiamento e inversão de texto
├── interpolacao-de-variaveis.py  # Técnicas de interpolação (%, format, f-strings e precisão decimal)
├── string-multiplas-linhas.py     # Strings triplas para templates e menus de terminal
├── strings-e-fatiamentos.py       # Métodos nativos de transformação, limpeza (strip) e junção
├── README.md                      # Documentação técnica do desafio
└── HISTORICO.md                   # Registro de decisões e histórico de evolução
```

## 🛠️ Tecnologias Utilizadas

| Item | Finalidade |
|---|---|
| **Python 3.x** | Interpretador e execução dos scripts de manipulação de strings |
| **PEP 8** | Convenções de legibilidade e boas práticas na manipulação de texto |
| **CLI / Terminal** | Execução e visualização das saídas formatadas |

## 🚀 Como Executar

Para executar os scripts, utilize o terminal a partir da pasta do desafio:

```bash
# Executar métodos de strings (upper, lower, strip, join, etc.)
python strings-e-fatiamentos.py

# Executar exemplos de interpolação e f-strings
python interpolacao-de-variaveis.py

# Executar script de fatiamento e indexação
python fatiamento-de-string.py

# Executar script de strings multilinha e menus
python string-multiplas-linhas.py
```

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
