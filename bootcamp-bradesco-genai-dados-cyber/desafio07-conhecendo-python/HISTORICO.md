# Histórico de Atualizações — Desafio 07

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-25] — Implementação dos Fundamentos e Recursos Essenciais do Python

**Resumo:** Criação e organização dos scripts práticos que demonstram os conceitos fundamentais da linguagem Python, cobrindo tipagem de dados, coerção, introspecção em modo interativo, convenções PEP 8 e manipulação avançada de entrada/saída no terminal.

### O que foi feito

- **Tipos Primitivos (`tipo_de_dados.py`):**
  - Implementação de exemplos demonstrando tipos fundamentais (`int`, `float`, `bool`, `str`).
  - Execução de operações aritméticas básicas e chamada aos construtores nativos da linguagem.

- **Modo Interativo e Introspecção (`modo-interativo.py`):**
  - Estruturação de exemplos didáticos sobre as funções de auxílio e introspecção do Python: `dir()`, `help()` e `type()`.
  - Explicação do funcionamento do ambiente REPL e consulta de assinaturas de métodos.

- **Variáveis, Constantes e Controle de Fluxo (`variaveis-e-constantes.py`):**
  - Declaração de variáveis seguindo a convenção `snake_case` e constante em `UPPER_CASE` (`BRAZILIAN_STATES`).
  - Demonstração de desempacotamento/atribuição múltipla na mesma linha (`nome2, idade2 = 'Gabriel', 25`).
  - Adição de estrutura condicional simples (`if` / `else`) para validação de idade mínima.

- **Coerção de Tipos e Aritmética (`conversao-de-tipos.py`):**
  - Aplicação de coerções explícitas de tipos entre números e strings (`int()`, `float()`, `str()`).
  - Verificação de tipos em tempo de execução com a função `type()`.
  - Comparativo entre o operador de divisão com retorno em ponto flutuante (`/`) e o operador de divisão inteira (`//`).

- **Manipulação de Entrada e Saída (`funcoes-de-entrada-e-saida.py`):**
  - Captura dinâmica de entradas do usuário via `input()`.
  - Formatação com f-strings para clareza e performance de concatenação.
  - Demonstração dos parâmetros customizados `sep` (separador) e `end` (terminador de linha) da função `print()`.

- **Documentação Técnica:**
  - Criação do `README.md` com escopo do módulo, detalhamento de tópicos, tabela de tecnologias e instruções de execução.
  - Criação deste `HISTORICO.md` para registro das decisões de implementação.

### Decisões Técnicas e Boas Práticas

- Adoção das diretrizes da **PEP 8** para legibilidade do código-fonte.
- Separação modular de cada conceito em scripts autônomos para facilitar consultas e estudos futuros.
