# 📋 Desafio 12 — Trabalhando com Listas em Python

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Estrutura de Dados / Coleções e Manipulação em Python

---

## 📋 Sobre o Desafio

Módulo dedicado ao estudo e aplicação prática de **Listas em Python (`list`)**. As listas são estruturas de dados sequenciais, ordenadas e mutáveis que permitem armazenar elementos heterogêneos. O módulo aborda desde a declaração básica, indexação direta e reversa, fatiamento e matrizes multidimensionais, até filtros com *List Comprehensions* e todos os métodos embutidos da classe `list`.

---

## ✨ Funcionalidades e Tópicos Abordados

- **Criação e Acesso a Dados (`Criação e acesso aos dados.py`):**
  - Inicialização de listas vazias, com valores literais, via construtor `list()` e geradores com `range()`.
  - Acesso a elementos por índice positivo e negativo.
  - Manipulação de matrizes bidimensionais (listas aninhadas).
  - Filtragem e transformação com laço `for` clássico versus *List Comprehensions* (código conciso e performático).

- **Métodos da Classe `list` (`Metodos da classe list.py`):**
  - `append()`: Adiciona um elemento ao final da lista.
  - `clear()`: Esvazia todos os elementos da lista.
  - `copy()`: Cria uma cópia rasa (*shallow copy*) com ponteiro de memória independente.
  - `count()`: Retorna o número de ocorrências de um determinado valor.
  - `extend()`: Concatena e adiciona múltiplos elementos a partir de outro iterável.
  - `index()`: Identifica a primeira ocorrência do valor especificado.
  - `pop()`: Remove e retorna o último elemento ou o elemento de índice especificado.
  - `remove()`: Remove a primeira ocorrência do valor passado por argumento.
  - `reverse()`: Inverte a ordem dos itens da lista *in-place*.
  - `sort()`: Ordena a lista *in-place* com suporte a ordenação reversa e funções customizadas (`key=lambda`).
  - `len()` e `sorted()`: Funções *built-in* para cálculo de dimensão e ordenação não-destrutiva.

---

## 📂 Estrutura de Arquivos

```
desafio12-trabalhando-com-listas-em-python/
├── Criação e acesso aos dados.py   # Criação, matrizes, filtros e list comprehensions
├── Metodos da classe list.py       # Demonstração completa dos métodos da classe list
├── README.md                       # Documentação técnica do módulo
└── HISTORICO.md                    # Registro de decisões e histórico de evolução
```

---

## 🛠️ Tecnologias Utilizadas

| Item | Finalidade |
|---|---|
| **Python 3.x** | Interpretador e execução dos scripts de estruturas de dados |
| **List Comprehensions** | Filtros e transformações funcionais de coleções |
| **PEP 8** | Convenções de legibilidade e padrões de código Python |
| **CLI / Terminal** | Execução e validação dos scripts |

---

## 🚀 Como Executar

Para executar os scripts, utilize o terminal a partir da pasta do desafio:

```bash
# Executar script de criação, matrizes e comprehensions
python "Criação e acesso aos dados.py"

# Executar script de métodos da classe list
python "Metodos da classe list.py"
```

---

<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
