# 🔍 Desafio 05 — Extraindo Insights com IA

> **Bootcamp:** Bradesco — GenAI, Dados e Cybersecurity  
> **Plataforma:** [DIO.me](https://www.dio.me/)  
> **Tipo:** Engenharia de Prompt (Prompt Engineering)

---

## 📋 Sobre o Desafio

Exercício prático de **Engenharia de Prompt** com foco na extração de insights estratégicos a partir de feedbacks de clientes bancários. O objetivo é construir um prompt estruturado e profissional que instrua uma IA Generativa a atuar como **Analista Sênior de Cibersegurança e Inteligência de Ameaças Bancárias**, analisando relatos de incidentes e correlacionando ameaças de malware com a eficácia de antivírus de mercado.

O prompt desenvolvido vai além do template sugerido pela DIO, adotando uma abordagem que prioriza:
- Classificação estruturada de feedbacks por tema, sentimento, urgência e canal.
- Cruzamento de custo vs. benefício (ROI de Segurança) entre ferramentas de antivírus e prejuízos financeiros.
- Recomendações práticas e priorizadas para a Diretoria de Segurança (CISO).
- Conformidade com a LGPD (anonimização de dados sensíveis).

## ✨ Funcionalidades do Prompt

- **Classificação Multi-Critério:** Categoriza feedbacks por Tema (Trojan, Phishing, Falso Positivo), Sentimento, Urgência e Canal/Produto afetado.
- **Análise de ROI de Segurança:** Cruza dados de eficácia de antivírus com os prejuízos financeiros relatados para embasar decisões de investimento.
- **Entrega Executiva Estruturada:** Gera Resumo Executivo, Tabela Analítica de Classificação/Mitigação e Top 3 Prioridades Estratégicas.
- **Guardrails de Segurança:** Instruções explícitas para não inventar dados, anonimizar informações sensíveis e declarar limitações analíticas.

## 📂 Estrutura de Arquivos

```
desafio05-extraindo-insights-com-ia/
├── desafio05-extraindo-insight.md       # Prompt estruturado final (entregável)
├── Ideia de prompt fornecido pela DIO.txt  # Template base fornecido pela DIO
├── Exemplo de resposta do Agente.docx   # Exemplo de saída esperada da IA
└── README.md                            # Este arquivo
```

## 🛠️ Tecnologias e Conceitos

| Item | Descrição |
|---|---|
| **Engenharia de Prompt** | Técnica de estruturação de instruções para guiar o comportamento de modelos de IA Generativa |
| **IA Generativa** | Modelos de linguagem utilizados para processar e analisar os feedbacks |
| **Cibersegurança Bancária** | Domínio de conhecimento aplicado: trojans, phishing, antivírus, fraudes digitais |
| **LGPD** | Lei Geral de Proteção de Dados — diretriz de anonimização respeitada no prompt |

## 🚀 Como Utilizar

1. Abra o arquivo [`desafio05-extraindo-insight.md`](./desafio05-extraindo-insight.md) e copie o conteúdo do prompt (bloco de texto dentro do code block).
2. Cole o prompt em uma ferramenta de IA Generativa (ChatGPT, Gemini, Copilot, etc.).
3. Forneça os dados de feedbacks, tabela de antivírus e matriz de ameaças como input complementar.
4. A IA retornará a análise estruturada conforme o formato especificado.

---
<div align="center">
  Desafio concluído como parte do Bootcamp Bradesco — GenAI, Dados e Cyber na DIO.me 🚀
</div>
