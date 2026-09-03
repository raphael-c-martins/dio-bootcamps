# Histórico Geral de Atualizações — DIO Bootcamps

> Diário consolidado de decisões arquiteturais e evolução dos projetos do repositório central de Bootcamps DIO.me.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-09-03] — Conclusão do Módulo de Funções e Desafios de Código em Python

**Resumo:** Finalização completa do curso "Dominando Funções em Python" (partes 1 e 2) e resolução dos dois desafios práticos de código ("Manipulação de Coleções e Funções em Python"), concluindo com êxito todo o módulo de Estruturas em Python.

### O que foi feito

- **Dominando Funções em Python — Parte 1 (`parte1.py`):**
  - Definição básica de funções com `def` e parâmetros com valor padrão (*default*).
  - Funções com retornos múltiplos (tuplas) e comportamento de funções sem retorno explícito (`None`).
  - Argumentos nomeados (*keyword arguments*) e desempacotamento de dicionários com `**kwargs`.
  - Tratamento de parâmetros variáveis com `*args` (tupla de argumentos posicionais) e `**kwargs` (dicionário de argumentos nomeados) com exemplo de formatação de texto e metadados.

- **Dominando Funções em Python — Parte 2 (`parte2.py`):**
  - **Parâmetros Especiais — Positional Only (`/`):** Restrição para que parâmetros antes da barra sejam passados exclusivamente por posição.
  - **Parâmetros Especiais — Keyword Only (`*`):** Restrição para que parâmetros após o asterisco sejam passados obrigatoriamente de forma nomeada.
  - **Parâmetros Especiais — Híbridos (`/` e `*`):** Combinação de parâmetros posicionais obrigatórios e nomeados obrigatórios.
  - **Objetos de Primeira Classe:** Tratamento de funções como valores de primeira classe, passando-as como argumentos para outras funções (`exibir_resultado` recebendo `somar` e `subtrair`).
  - **Escopos em Python:** Diferenciação entre escopo global e local, e aplicação da palavra-chave `global` para manipulação de variáveis globais dentro do escopo de função.

- **Desafios Práticos de Código:**
  - **Desafio 01 — Calculando Saldo Diário de Lançamentos Bancários (`Desafio01.py`):** Processamento de lançamentos financeiros (`R` para receita e `D` para despesa) a partir de entrada de texto, cálculo do saldo final do dia e formatação com duas casas decimais.
  - **Desafio 02 — Removendo Duplicatas de Transações no Extrato (`Desafio02.py`):** Filtragem de identificadores duplicados mantendo estritamente a ordem de primeira ocorrência com laço e verificação `not in`.

---

## 🚀 [2026-09-02] — Módulo Estruturas em Python: Coleções (Tuplas, Conjuntos e Dicionários)

**Resumo:** Reorganização dos cursos do módulo em diretório unificado e implementação prática aprofundada cobrindo Tuplas, Conjuntos (Sets) e Dicionários (Dicts), incluindo métodos nativos, estruturas aninhadas e operadores de pertinência. Criação dos arquivos base para o módulo de Funções em Python.

### O que foi feito

- **Reorganização Estrutural do Módulo:**
  - Criação da pasta unificada `Estruturas em Python - Dados, Coleções e Funções/` agrupando todos os tópicos da formação.
  - Migração do conteúdo de listas para a subpasta `Trabalhando com Listas em Python/`.

- **Conhecendo Tuplas em Python (`Tuplas.py`):**
  - Definição de tuplas com sintaxe de parênteses e vírgula trailing para tuplas unielementares `("Brasil",)`.
  - Conversões usando `tuple()` a partir de strings e listas.
  - Acesso indexado (direto e reverso), fatiamento (*slicing*) e métodos embutidos da classe `tuple`: `.count()`, `.index()` e função `len()`.

- **Explorando Conjuntos em Python (`Conjuntos.py`):**
  - Criação de conjuntos para eliminação de duplicatas e operações matemáticas da Teoria dos Conjuntos.
  - Métodos de relação entre conjuntos: `.union()`, `.intersection()`, `.difference()`, `.symmetric_difference()`, `.issubset()`, `.issuperset()` e `.isdisjoint()`.
  - Métodos de manipulação e consulta: `.add()`, `.clear()`, `.copy()`, `.discard()`, `.pop()`, `.remove()`, `len()` e verificação de pertinência com `in`.

- **Dicionários — Criação e Acesso aos Dados (`Criação-e-acesso.py` e `Dict.py`):**
  - Criação via literal `{}` e construtor `dict()`.
  - Adição, leitura e alteração dinâmica de pares chave-valor.
  - Criação de dicionários aninhados para modelagem de estruturas compostas.
  - Iteração simples sobre as chaves com laço `for`.
  - Implementação de métodos da classe `dict`: `.clear()`, `.copy()`, `.fromkeys()`, `.get()` (com tratamento de chaves inexistentes e fallback), `.items()`, `.keys()`, `.pop()`, `.popitem()`, `.setdefault()`, `.update()`, `.values()` e operador de pertinência `in`.

- **Dominando Funções em Python (`parte1.py` e `parte2.py`):**
  - Inicialização dos arquivos de estudo para conclusão das aulas e desafios de funções no próximo ciclo.

- **Atualização dos Manuais:**
  - Atualização do `README.md` do Bootcamp Bradesco refletindo a nova organização dos módulos de coleções e estruturas de dados.

---

## 🚀 [2026-09-01] — Módulos 11, 12 e Integração da Trilha Python no Bootcamp Bradesco

**Resumo:** Conclusão dos desafios práticos de algoritmos em Python (Módulo 11) e domínio completo de estruturas de dados do tipo Lista, matrizes multidimensionais e métodos nativos (Módulo 12), além da integração da base de código da Trilha Python da DIO.

### O que foi feito

- **Desafio 11 — Fundamentos de Programação com Python:**
  - `desafio01`: Implementação de análise de movimentação de ativos financeiros (`ALTA`, `BAIXA`, `ESTAVEL`) utilizando manipulação de strings e comparações relacionais.
  - `desafio02`: Padronização de nomes de destinatários bancários em caixa alta (`.upper()`).

- **Desafio 12 — Trabalhando com Listas em Python:**
  - Padronização da estrutura do diretório para `desafio12-trabalhando-com-listas-em-python`.
  - Implementação de manipulação de matrizes bidimensionais e acesso indexado direto/reverso.
  - Demonstração comparativa entre filtragem/mapeamento tradicional (`for`) e funcional (*List Comprehensions*).
  - Testes com todos os métodos embutidos da classe `list` (`append`, `clear`, `copy`, `count`, `extend`, `index`, `pop`, `remove`, `reverse`, `sort`, `len`, `sorted`).

- **Trilha Python DIO:**
  - Organização do material de referência da trilha abrangendo Fundamentos, Estruturas de Dados, POO, APIs Assíncronas (FastAPI) e Banco de Dados.

- **Atualização dos Manuais Gerais:**
  - Atualização do `README.md` do Bootcamp Bradesco com a listagem completa dos 12 desafios.

---

## 🚀 [2026-08-31] — Estruturas Condicionais, Repetição e Manipulação de Strings (Desafios 09 e 10)

- Implementação dos módulos de estruturas de controle de fluxo e manipulação de strings.
- Exemplos de fatiamento, interpolação (f-strings) e blocos multilinha.

---

## 🚀 [2026-08-26] — Operadores e Tipagem em Python (Desafios 07 e 08)

- Implementação de scripts cobrindo operadores aritméticos, relacionais, lógicos, de atribuição, identidade e associação.
