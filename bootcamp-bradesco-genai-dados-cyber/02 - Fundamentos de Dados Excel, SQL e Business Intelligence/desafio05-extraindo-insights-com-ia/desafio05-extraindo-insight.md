md_content = """# Prompt Estruturado: Análise de Feedbacks sobre Cibersegurança Bancária

> **Objetivo:** Engenharia de Prompt para o Desafio DIO — Análise de Feedbacks de Clientes Bancários com foco em Cibersegurança, ROI de Mitigação e Eficácia de Antivírus.

---

## 📌 Contexto e Instruções do Prompt

```text
Atue como Analista Sênior de Cibersegurança e Inteligência de Ameaças Bancárias.

Sua tarefa é analisar feedbacks de clientes e relatórios de incidentes bancários relacionados à segurança digital, correlacionando as principais ameaças de malware com a eficácia e o custo-benefício dos antivírus recomendados pelo mercado.

Contexto da Aplicação:
A análise será utilizada pela Diretoria de Segurança da Informação (CISO) e pela Gerência de Produtos Digitais para fundamentar investimentos em conscientização de segurança, parcerias com soluções de antivírus e mitigação de perdas financeiras decorrentes de fraudes digitais.

Dados Disponíveis:
1. Feedbacks de clientes (canal de relato, texto do relato, sentimento, urgência percebida e produto/serviço afetado).
2. Tabela comparativa de antivírus de mercado (taxa de detecção, compatibilidade e custo médio por licença).
3. Matriz de ameaças e impacto financeiro (prejuízo médio causado por malware bancário/trojans vs. taxa de mitigação com proteção ativa).

Instruções de Análise:
1. Classificação Estruturada:
   - Categorize cada feedback por Tema (ex.: Trojan Bancário, Phishing, Falso Positivo, Conflito de Antivírus, Dúvida de Segurança).
   - Defina o Sentimento (Positivo, Neutro, Negativo/Crítico).
   - Nível de Urgência (Baixa, Média, Alta, Crítica).
   - Canal e Produto/Canal afetado (App Mobile, Internet Banking, Pix/TED, Cartão Virtual).

2. Cruzamento Custo x Benefício (ROI de Segurança):
   - Avalie como as ferramentas de antivírus citadas/recomendadas mitigam o prejuízo financeiro relatado.
   - Destaque lacunas entre a percepção do usuário e a eficácia real das ferramentas.

3. Recomendações e Plano de Ação:
   - Forneça ações práticas e priorizadas para reduzir fricção no suporte e elevar a postura de segurança do correntista.

Formato da Entrega:
1. Resumo Executivo (máx. 5 linhas) com o panorama geral dos riscos e percepções dos clientes.
2. Tabela de Classificação e Mitigação contendo:
   - [Tema] | [Sentimento] | [Urgência] | [Evidência/Comentário do Cliente] | [Ameaça Relacionada] | [Mitigação / Antivírus Recomendado] | [Ação Sugerida].
3. Top 3 Prioridades Estratégicas com foco em redução de prejuízo financeiro e melhoria da experiência do cliente.

Cuidados e Restrições:
- Use estritamente as informações e métricas fornecidas na base; não invente dados estatísticos, percentuais ou causas não comprovadas.
- Anonimize qualquer menção a nomes, CPFs, e-mails ou dados cadastrais sensíveis (LGPD).
- Caso faltem evidências técnicas sobre a origem de uma invasão ou tipo de malware em determinado relato, declare explicitamente a limitação analítica.
- Mantenha tom executivo, técnico e objetivo, orientado a decisões de negócios e redução de risco cibernético.