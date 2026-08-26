# 🔢 Desafio 08 — Operadores em Python

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Fundamentos de Programação / Sintaxe e Operadores Essenciais

---

## 📋 Sobre o Desafio

Módulo prático voltado para o aprendizado e domínio dos **operadores nativos da linguagem Python**. O objetivo é compreender o funcionamento sintático, a semântica de avaliação, a precedência matemática e lógica, bem como as melhores práticas de legibilidade e escrita de código de acordo com a PEP 8.

## ✨ Funcionalidades e Tópicos Abordados

- **Operadores Aritméticos (`aritmeticos.py`):**
  - Operações matemáticas fundamentais: adição (`+`), subtração (`-`), multiplicação (`*`), divisão real (`/`), divisão inteira (`//`), módulo/resto (`%`) e exponenciação (`**`).
  - Demonstração da ordem de precedência matemática (parênteses, expoentes, multiplicação/divisão e adição/subtração).

- **Operadores de Atribuição Composta (`atribuicao.py`):**
  - Simplificação de operações aritméticas acumulativas com operadores de atribuição combinada: `+=`, `-=`, `*=`, `/=`, `//=`, `%=` e `**=`.

- **Operadores de Comparação / Relacionais (`comparacao.py`):**
  - Avaliação relacional de grandezas: igualdade (`==`), diferença (`!=`), maior que (`>`), maior ou igual (`>=`), menor que (`<`) e menor ou igual (`<=`), retornando valores booleanos (`True` ou `False`).

- **Operadores Lógicos e Expressões Compostas (`logicos.py`):**
  - Conjunção (`and`), disjunção (`or`) e negação (`not`).
  - Aplicação de operadores lógicos em estruturas de controle condicional (`if` / `else`).
  - Criação de expressões booleanas complexas e técnica de decomposição em variáveis intermediárias para maior clareza e legibilidade.

- **Operadores de Identidade (`identidade.py`):**
  - Comparação de identidade de objetos na memória utilizando `is` e `is not`.
  - Diferenciação entre igualdade de valor (`==`) e identidade de referência na memória (`is`).

- **Operadores de Associação (`associacao.py`):**
  - Verificação de pertencimento de elementos em sequências (strings e listas) com `in` e `not in`.
  - Demonstração prática do comportamento sensível a maiúsculas e minúsculas (*case-sensitive*).

## 📂 Estrutura de Arquivos

```
desafio08-operadores/
├── aritmeticos.py      # Operações aritméticas e ordem de precedência
├── associacao.py       # Verificação de pertinência em sequências (in, not in)
├── atribuicao.py       # Operadores de atribuição composta
├── comparacao.py       # Operadores relacionais e de comparação
├── identidade.py       # Verificação de identidade de objetos na memória (is, is not)
├── logicos.py          # Operadores lógicos (and, or, not) e decomposição de expressões
├── README.md           # Documentação técnica do desafio
└── HISTORICO.md        # Registro de decisões e histórico de evolução
```

## 🛠️ Tecnologias Utilizadas

| Item | Finalidade |
|---|---|
| **Python 3.x** | Interpretador e execução dos scripts de operadores |
| **PEP 8** | Padrões de legibilidade e estilo de código |
| **CLI / Terminal** | Execução e validação dos scripts em linha de comando |

## 🚀 Como Executar

Para executar qualquer um dos scripts, utilize o interpretador Python no terminal a partir desta pasta:

```bash
# Executar script de operadores aritméticos
python aritmeticos.py

# Executar script de operadores de atribuição
python atribuicao.py

# Executar script de operadores de comparação
python comparacao.py

# Executar script de operadores lógicos
python logicos.py

# Executar script de operadores de identidade
python identidade.py

# Executar script de operadores de associação
python associacao.py
```

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
