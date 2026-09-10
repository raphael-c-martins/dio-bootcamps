# Histórico de Atualizações — Desafio 04

> Diário de decisões e evolução do projeto. Entradas ordenadas da mais recente para a mais antiga.

---

## ⚠️ Diretrizes de Preservação

- **NUNCA** apagar logs ou resetar dados de banco de dados em nenhuma circunstância de manutenção.
- Qualquer modificação estrutural deve ser feita por meio de migrations incrementais e seguras.

---

## 🚀 [2026-08-17] — Construção do Pipeline ETL para Nintendo Switch Packages

**Resumo:** Implementação de pipeline ETL para saneamento, transformação e enriquecimento de dados brutos de envio e vendas de jogos Nintendo.

### O que foi feito

- **Ingestão de Dados Brutos (`nintendo-sending-packages.xlsx`):** Mapeamento do layout original de exportação SAP com colunas de pacotes de envio.
- **Pipeline de Transformação (`nintendo-packages-etl.xlsx`):**
  - Desmembramento da coluna composta `Game` em `Game Name` e `Console`.
  - Normalização da coluna `Region` de códigos ISO/siglas (`EN`, `PT`, `JP`) para nomes completos por extenso (`English`, `Portuguese`, `Japanese`).
  - Higienização da coluna `Batch`, expurgando o prefixo textual para manter o identificador numérico padronizado.
  - Cálculo de agregação financeira derivando a coluna `Total Price`.
- **Documentação Técnica:** Criação do `README.md` e `HISTORICO.md` para documentar o ciclo de vida dos dados e o pipeline executado.
