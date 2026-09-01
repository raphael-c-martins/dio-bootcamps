# Histórico de Atualizações — Desafio 11

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural em bases de dados deve ser realizada estritamente por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-31] — Resolução dos Desafios de Código: Análise de Ações e Padronização de Nomes

**Resumo:** Implementação de soluções algorítmicas em Python puro para desafios práticos de código da DIO, contemplando cenários financeiros e de validação bancária.

### O que foi feito

- **Desafio 01 (`desafio01 -  Análise Simples de Alta, Baixa ou Estabilidade de Ações.py`):**
  - Leitura de linha com entrada múltipla utilizando `.split()`.
  - Conversão de tipos para inteiros (`int`).
  - Comparação relacional para determinar o status do ativo no pregão (`ALTA`, `BAIXA` ou `ESTAVEL`).

- **Desafio 02 (`desafio02 -  Nome Do Destinatário Em Caixa Alta para Transferências Bancárias.py`):**
  - Captura do nome do destinatário via entrada padrão.
  - Aplicação do método `.upper()` para higienização e padronização em letras maiúsculas.

- **Documentação Técnica:**
  - Criação do `README.md` com enunciados, fluxos de dados e exemplos de teste.
  - Criação do `HISTORICO.md` para rastreabilidade do módulo.

### Decisões Técnicas e Boas Práticas

- **Simplicidade e Desempenho:** Uso exclusivo de recursos nativos da linguagem sem dependências externas, garantindo execução ultrarrápida.
- **Robustez de Input:** Tratamento de entradas espaçadas via desempacotamento de lista do `.split()`.
