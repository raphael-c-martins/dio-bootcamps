# Histórico de Atualizações — Desafio 02

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural deve ser feita por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-17] — Criação da Planilha de Produtividade e Backlog

**Resumo:** Construção de planilha dinâmica no Microsoft Excel para gestão de backlog de tarefas de equipe com status, datas e métricas automáticas.

### O que foi feito

- **Estruturação de Dados (`planilha-de-produtividade.xlsx`):** Criação de tabela de backlog contendo colunas para ID da tarefa, Descrição (`Task`), Responsável (`Owner`), Estado (`Status`), Data de Entrega e Nível de Prioridade.
- **Painel de Indicadores:** Implementação de fórmulas de contagem para consolidação do Total de Atividades cadastradas e Total de Atividades Concluídas (`Done`).
- **Documentação do Desafio:** Criação do `README.md` com instruções de uso e escopo do projeto.
