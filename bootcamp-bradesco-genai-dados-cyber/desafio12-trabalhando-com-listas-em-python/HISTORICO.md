# Histórico de Atualizações — Desafio 12

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-09-01] — Implementação e Domínio de Listas, Matrizes e Métodos Nativos em Python

**Resumo:** Desenvolvimento e padronização dos scripts práticos cobrindo estruturas de dados de lista (`list`) em Python, incluindo criação, matrizes multidimensionais, filtragem e transformação funcional com *List Comprehensions*, além da exploração detalhada de todos os métodos nativos da classe.

### O que foi feito

- **Criação, Acesso e Comprehensions (`Criação e acesso aos dados.py`):**
  - Inicialização de listas com construtores, strings iteráveis e geradores de sequência com `range()`.
  - Acesso indexado positivo e negativo (`[-1]`).
  - Implementação de matrizes bidimensionais e acesso posicional a linhas e colunas.
  - Comparativo didático entre filtragem clássica via laço `for` com `.append()` e a abordagem idiomática via *List Comprehension*.
  - Transformação de valores aplicando potenciação com compreensão de listas (`[x ** 2 for x in lista]`).

- **Métodos da Classe `list` (`Metodos da classe list.py`):**
  - Testes com `append`, `clear`, `copy` (comprovação de alocação de memória independente via `id()`), `count`, `extend`, `index`, `pop`, `remove`, `reverse` e `sort`.
  - Exploração de ordenação customizada via argumento `key` com funções lambda (`key=lambda x: len(x)`) e flag `reverse=True`.
  - Comparação prática entre ordenação destrutiva *in-place* (`.sort()`) e criação de novo iterável ordenado (`sorted()`).

- **Documentação Técnica e Padronização:**
  - Padronização do nome do diretório para `desafio12-trabalhando-com-listas-em-python`.
  - Criação do `README.md` com escopo, métodos e instruções de execução.
  - Criação deste `HISTORICO.md` com rastreabilidade técnica e desafios superados.

### Decisões Técnicas e Boas Práticas

- **Legibilidade e Performance:** Incentivo ao uso de List Comprehensions para operações de filtro e mapeamento, reduzindo a complexidade ciclomática e aumentando a performance no interpretador CPython.
- **Tratamento de Cópia Segura:** Demonstração do método `.copy()` para evitar efeitos colaterais de mutabilidade compartilhada em estruturas de lista.
- **Encoding e Acentuação:** Garantia de cabeçalho `# -*- coding: utf-8 -*-` e compatibilidade total com caracteres acentuados.
