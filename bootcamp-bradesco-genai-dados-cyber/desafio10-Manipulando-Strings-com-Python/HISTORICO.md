# Histórico de Atualizações — Desafio 10

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-31] — Implementação de Métodos, Interpolação e Fatiamento de Strings em Python

**Resumo:** Desenvolvimento de scripts práticos demonstrando o conjunto abrangente de recursos de manipulação de strings em Python, incluindo métodos de transformação e higienização (`upper`, `lower`, `title`, `strip`, `center`, `join`), evolução das técnicas de interpolação (`%`, `.format()`, f-strings), fatiamento (*slicing*) com passos e índices negativos, além do uso de strings triplas para blocos multilinha.

### O que foi feito

- **Métodos Nativos de Strings (`strings-e-fatiamentos.py`):**
  - Aplicação de métodos para alteração de caixa (`upper()`, `lower()`, `title()`).
  - Remoção de espaços excedentes em extremidades com `strip()`, `lstrip()` e `rstrip()`.
  - Demonstração do método `center()` para preenchimento simétrico com caracteres personalizados e `.join()` para junção de caracteres em iteráveis com delimitador.

- **Técnicas de Interpolação e Formatação (`interpolacao-de-variaveis.py`):**
  - Implementação comparativa entre o padrão clássico com `%` (*Old Style*), o método intermediário `.format()` e a sintaxe moderna com `f-strings`.
  - Demonstração de argumentos posicionais, nomeados e desempacotamento de dicionários (`**kwargs`) via `.format()`.
  - Execução de expressões inline com f-strings e especificação de precisão decimal e alinhamento em pontos flutuantes (`{PI:.2f}`, `{PI:10.4f}`).

- **Fatiamento e Indexação (`fatiamento-de-string.py`):**
  - Manipulação posicional de caracteres utilizando índices diretos e reversos.
  - Extração de fatias (*slices*) com intervalo `[start:stop]`, salto de posições com `step` e inversão completa de strings via `[::-1]`.

- **Strings Multilinha e Interfaces de Texto (`string-multiplas-linhas.py`):**
  - Construção de strings multilinha com aspas triplas (`'''` e `"""`), mantendo a formatação visual e quebras de linha nativas.
  - Criação de menu de terminal estilizado para simulação de caixa eletrônico de banco digital.

- **Documentação Técnica:**
  - Criação do `README.md` com escopo do desafio, tabela de arquivos, tecnologias e instruções de execução.
  - Criação deste `HISTORICO.md` para registro e rastreabilidade das decisões de engenharia.

### Decisões Técnicas e Boas Práticas

- **Preferencia por F-Strings:** Destaque para o uso de f-strings como prática padrão recomendada no Python moderno devido à legibilidade superior e performance otimizada em tempo de compilação de bytecode.
- **Higienização de Strings:** Demonstração de métodos `strip` para tratamento seguro de entradas de dados e prevenção de inconsistências decorrentes de espaços não intencionais.
- **Modularização de Conceitos:** Organização dos scripts em arquivos específicos por categoria de funcionalidade textual.
