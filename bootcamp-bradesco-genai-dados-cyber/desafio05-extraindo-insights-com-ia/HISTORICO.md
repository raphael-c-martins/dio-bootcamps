# Histórico de Atualizações — Desafio 05

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural deve ser feita por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-17] — Implementação Inicial do Desafio

**Resumo:** Criação do prompt estruturado para análise de feedbacks de clientes bancários com foco em cibersegurança, ROI de antivírus e prioridades estratégicas para a Diretoria de Segurança (CISO).

### O que foi feito

- **Prompt Estruturado (`desafio05-extraindo-insight.md`):** Desenvolvimento de um prompt completo e profissional que instrui a IA a atuar como Analista Sênior de Cibersegurança e Inteligência de Ameaças Bancárias. O prompt foi construído indo além do template base fornecido pela DIO, incluindo:
  - Definição clara de persona, contexto e público-alvo da análise.
  - Classificação multi-critério (Tema, Sentimento, Urgência, Canal/Produto).
  - Cruzamento de ROI de Segurança entre antivírus e prejuízos financeiros.
  - Formato de entrega executivo (Resumo, Tabela Analítica e Top 3 Prioridades).
  - Guardrails explícitos: proibição de inventar dados, anonimização LGPD e declaração de limitações.

- **Exemplo de Resposta (`Exemplo de resposta do Agente.docx`):** Documento com a saída esperada da IA ao processar o prompt, demonstrando o formato de Resumo Executivo, Tabela Analítica de Feedbacks e as 3 Prioridades Estratégicas (Parceria Endpoint, SDK Anti-Overlay e Comunicação Anti-Phishing).

- **Documentação:** Criação do `README.md` com visão geral do desafio, estrutura de arquivos, tecnologias utilizadas e instruções de uso. Criação do `HISTORICO.md` (este arquivo) para rastreabilidade de decisões.

### Decisões e Observações

- O prompt foi desenhado para ser **reutilizável** em contextos reais de consultoria de cibersegurança bancária, não apenas como exercício acadêmico.
- A escolha por um tom executivo e orientado a negócios reflete a aplicação prática para CISO e Gerência de Produtos Digitais.
