# 📜 Histórico de Atualizações e Decisões Arquiteturais

> ⚠️ **DIRETRIZES PERMANENTES DE PRESERVAÇÃO DE DADOS (AGENTE DE IA / ENGENHARIA):**
> É terminantemente PROIBIDO realizar o reset, apagamento (`DROP`/`TRUNCATE`) do banco de dados ou a exclusão de arquivos de log em qualquer circunstância de manutenção ou desenvolvimento. Qualquer evolução estrutural no banco de dados DEVE ocorrer via migrações incrementais e seguras (`CREATE TABLE IF NOT EXISTS`, `ALTER TABLE`, etc.).

---

## 🚀 [2026-08-06] - Modelagem Inicial do Banco PostgreSQL (3NF) para Pokémon TCG

### 📌 Descrição das Alterações
- **Modelagem Relacional Normalizada (3NF):** Criado o script DDL em `db_scripts/001_create_card_table.sql` com 4 tabelas relacionais (`tbl_collections`, `tbl_types`, `tbl_stages` e `tbl_cards`).
- **Normalização de Domínios:** Separação das colunas `type` e `stage` em tabelas dedicadas (`tbl_types` e `tbl_stages`) com restrição `UNIQUE` e relacionamentos por Chave Estrangeira (`FK`).
- **Integridade e Otimização:**
  - Configuração de `ON DELETE CASCADE` para a coleção pai e `ON DELETE RESTRICT` para tipos/estágios em `tbl_cards`.
  - Criação de índices de busca (`idx_cards_collection_id`, `idx_cards_type_id`, `idx_cards_stage_id`, `idx_cards_name`).
- **Massas de Teste (Seeds):** Criado o script `db_scripts/seeds/001_seeds_cards.sql` contendo os 11 tipos padrão de Pokémon, 10 estágios de evolução, coleção modelo (Base Set) e a carta de exemplo do Pikachu.
- **Documentação Técnica:** Atualizado o `readme.md` com instruções de execução e diagrama Entidade-Relacionamento (ER) em formato Mermaid.

---

## 🚀 [2026-08-10] - Carga Inicial Completa de Seeds para Pokémon TCG

### 📌 Descrição das Alterações
- **Expansão de Seeds para Todas as Tabelas:** Atualizado o arquivo [db_scripts/seeds/001_seeds_cards.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/001_seeds_cards.sql) para contemplar carga inicial completa em todas as tabelas do modelo de dados (`tbl_types`, `tbl_stages`, `tbl_collections` e `tbl_cards`).
- **Resiliência e Idempotência:** Utilização de cláusulas `ON CONFLICT (name) DO NOTHING` e sub-consultas `WHERE NOT EXISTS` para evitar duplicações em coleções e domínios.
- **Vínculo Relacional Dinâmico:** Inserções da tabela principal `tbl_cards` configuradas via `SELECT` interno dinâmico para resolução de chaves estrangeiras (`collection_id`, `type_id`, `stage_id`).
- **Massa de Dados Diversificada:** Inclusão de 7 coleções icônicas (*Base Set*, *Jungle*, *Fossil*, *Team Rocket*, *Neo Genesis*, *Evolving Skies*, *151 Scarlet & Violet*) e cartas clássicas e modernas cobrindo múltiplos tipos e estágios (Charizard, Blastoise, Venusaur, Pikachu, Mewtwo, Machamp, Gyarados, Alakazam, Snorlax, Jolteon, Vaporeon, Flareon, Gengar, Dragonite, Zapdos, Dark Charizard, Dark Raichu, Lugia, Typhlosion, Rayquaza VMAX, Umbreon VMAX, Charizard ex, Alakazam ex).

