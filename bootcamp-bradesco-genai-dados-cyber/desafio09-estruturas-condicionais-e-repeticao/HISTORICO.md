# Histórico de Atualizações — Desafio 09

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-31] — Implementação de Estruturas Condicionais e de Repetição em Python

**Resumo:** Desenvolvimento de scripts práticos abordando os conceitos fundamentais de controle de fluxo de execução em Python, incluindo regras obrigatórias de indentação e escopo, estruturas condicionais (`if`, `elif`, `else`), operador ternário, laços iterativos (`for`) com `range` e `for...else`, além de laços condicionais (`while`) com controle por `break`.

### O que foi feito

- **Indentação e Delimitação de Escopo (`indentacao-e-blocos.py`):**
  - Demonstração do modelo sintático de blocos em Python baseado exclusivamente em indentação (4 espaços).
  - Exemplificação de blocos em estruturas condicionais e definição de funções (`sacar()`).
  - Utilização da instrução `pass` como marcador sintático de blocos pendentes sem quebra de execução.

- **Estruturas Condicionais e Tomada de Decisão (`estruturas-condicionais.py`):**
  - Implementação de fluxos com `if`, `elif` e `else` para cenários múltiplos.
  - Criação de lógica de controle bancário aninhada avaliando tipos de conta (`conta_normal`, `conta_universitaria`, `conta_especial`), saldo e limite de cheque especial.
  - Implementação de verificações interativas via `input()` (avaliação de aprovação, maioridade e menu de operações bancárias).
  - Demonstração de **If Ternário** para atribuição condicional concisa e de alta legibilidade.

- **Estruturas de Repetição e Iterações (`estruturas-de-repeticao.py`):**
  - Comparação prática demonstrando a economia de código e redução de redundâncias proporcionadas por laços iterativos.
  - Iteração sobre strings com filtragem de caracteres em conjunto com a cláusula `for...else`.
  - Exploração dos parâmetros da função geradora `range()` (início, fim e passo), exemplificando a construção de tabuadas.
  - Criação de laço `while` interativo para navegação em menus com condição de parada por flag (`opcao != 0`).
  - Implementação de laço `while True` com controle de saída antecipada por `break` e verificação de paridade numérica.

- **Documentação Técnica:**
  - Criação do `README.md` com detalhamento das funcionalidades, estrutura modular, tabela de tecnologias e guia de execução.
  - Criação deste `HISTORICO.md` para registro e rastreabilidade das etapas de implementação.

### Decisões Técnicas e Boas Práticas

- **Escopo e Legibilidade:** Manutenção estrita da indentação de 4 espaços conforme preconizado pela PEP 8.
- **Expressões Condicionais Concisas:** Aplicação de expressões ternárias para simplificação de atribuições diretas sem necessidade de blocos extensos de `if/else`.
- **Modularização Didática:** Separação de conceitos em arquivos independentes para facilitar a consulta rápida e o aprendizado contínuo.
