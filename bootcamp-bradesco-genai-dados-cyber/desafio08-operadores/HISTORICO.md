# Histórico de Atualizações — Desafio 08

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-26] — Implementação dos Operadores Essenciais em Python

**Resumo:** Desenvolvimento de scripts práticos e didáticos demonstrando os principais tipos de operadores nativos da linguagem Python, cobrindo operadores aritméticos com regras de precedência, atribuição composta, comparação relacional, lógica booleana, identidade em memória e verificação de pertinência por associação.

### O que foi feito

- **Operadores Aritméticos (`aritmeticos.py`):**
  - Implementação e validação de operações básicas (`+`, `-`, `*`, `/`, `//`, `%`, `**`).
  - Demonstração da ordem de precedência matemática e impacto do uso de parênteses para controle explícito de precedência de cálculo.

- **Operadores de Atribuição Composta (`atribuicao.py`):**
  - Aplicação prática de operadores acumulativos e combinados (`+=`, `-=`, `*=`, `/=`, `//=`, `%=`, `**=`) sobre variáveis numéricas de controle financeiro (`saldo`).

- **Operadores de Comparação / Relacionais (`comparacao.py`):**
  - Validação de expressões lógicas utilizando `==`, `!=`, `>`, `>=`, `<` e `<=`.
  - Análise dos retornos booleanos para suporte à tomada de decisões em fluxos de execução.

- **Operadores Lógicos e Expressões Compostas (`logicos.py`):**
  - Uso dos operadores `and`, `or` e `not` em cenários práticos de regras de negócio (saques, limites e verificação de contas especiais).
  - Demonstração da refatoração de expressões lógicas longas em variáveis semânticas intermediárias (`conta_normal_com_saldo_suficiente`, `conta_especial_com_saldo_suficiente`), promovendo manutenibilidade e legibilidade.

- **Operadores de Identidade (`identidade.py`):**
  - Comparação de identidade de referências na memória utilizando `is` e `is not`.
  - Demonstração prática da diferença entre comparar valores versus referências do mesmo objeto na memória.

- **Operadores de Associação (`associacao.py`):**
  - Verificação de existência de elementos em tipos sequenciais (strings e listas) com `in` e `not in`.
  - Demonstração do comportamento sensível a maiúsculas e minúsculas (*case-sensitive*) nas verificações em listas e strings.

- **Documentação Técnica:**
  - Criação do `README.md` com explicação de escopo, estrutura de arquivos, tabela de tecnologias e comandos para execução.
  - Criação deste `HISTORICO.md` para registro e rastreabilidade das decisões de engenharia.

### Decisões Técnicas e Boas Práticas

- **Clareza de Expressões Booleanas:** Demonstração do desacoplamento de expressões complexas em variáveis com nomes descritivos, reduzindo a carga cognitiva de leitura do código.
- **Conformidade com a PEP 8:** Organização modular dos arquivos por categoria de operadores com formatação e espaçamento consistentes.
