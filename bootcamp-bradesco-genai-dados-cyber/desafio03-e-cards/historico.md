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

## 🚀 [2026-08-10] - Refatoração do DDL, Organização Estrutural e Carga em Lote de Cartas

### 📌 Descrição das Alterações
- **Refatoração DDL e Restrições de Integridade:**
  - Atualizado o DDL [db_scripts/tables/001_create_card_table.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/tables/001_create_card_table.sql) adicionando a restrição `UNIQUE` na coluna `collection_set_name` da tabela `tbl_collections`.
  - Adicionada a restrição de unicidade composta `CONSTRAINT uq_card_collection_number UNIQUE (collection_id, card_number_in_collection)` na tabela `tbl_cards` para impedir registros duplicados de cartas dentro do mesmo set.
- **Organização Modular de Diretórios:** Movido o script DDL principal para a subpasta `db_scripts/tables/`, padronizando o diretório em `tables/` e `seeds/`.
- **Carga em Lote de Cartas (50+ Registros Adicionais):**
  - Renomeado e estruturado o arquivo [db_scripts/seeds/002_bulk_cards-1.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/002_bulk_cards-1.sql) (20 cartas).
  - Criado o arquivo [db_scripts/seeds/003_bulk_cards-2.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/003_bulk_cards-2.sql) contendo 30 novos registros de cartas Pokémon (linhas evolutivas Kanto, lendários, VSTAR, ex e VMAX).
- **Auditoria e Depuração SQL:**
  - Corrigida a paridade de colunas (12 colunas por tupla) em todas as inserções de `tbl_cards`.
  - Ajustadas as numerações das cartas `Meganium` (`11/111`) e `Tyranitar` (`31/111`) em `Neo Genesis` para resolver conflitos de chave única.

---

## 🚀 [2026-08-10] - Carga Inicial Completa de Seeds para Pokémon TCG

### 📌 Descrição das Alterações
- **Expansão de Seeds para Todas as Tabelas:** Atualizado o arquivo [db_scripts/seeds/001_seeds_cards.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/001_seeds_cards.sql) para contemplar carga inicial completa em todas as tabelas do modelo de dados (`tbl_types`, `tbl_stages`, `tbl_collections` e `tbl_cards`).
- **Resiliência e Idempotência:** Utilização de cláusulas `ON CONFLICT (name) DO NOTHING` e sub-consultas `WHERE NOT EXISTS` para evitar duplicações em coleções e domínios.
- **Vínculo Relacional Dinâmico:** Inserções da tabela principal `tbl_cards` configuradas via `SELECT` interno dinâmico para resolução de chaves estrangeiras (`collection_id`, `type_id`, `stage_id`).
- **Massa de Dados Diversificada:** Inclusão de 7 coleções icônicas (*Base Set*, *Jungle*, *Fossil*, *Team Rocket*, *Neo Genesis*, *Evolving Skies*, *151 Scarlet & Violet*) e cartas clássicas e modernas cobrindo múltiplos tipos e estágios (Charizard, Blastoise, Venusaur, Pikachu, Mewtwo, Machamp, Gyarados, Alakazam, Snorlax, Jolteon, Vaporeon, Flareon, Gengar, Dragonite, Zapdos, Dark Charizard, Dark Raichu, Lugia, Typhlosion, Rayquaza VMAX, Umbreon VMAX, Charizard ex, Alakazam ex).
- **Carga Adicional de Cartas (20 Novos Registros):** Criado o script [db_scripts/seeds/002_more_cards.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/002_more_cards.sql) contendo 20 novas cartas (Mew, Arcanine, Haunter, Raichu, Ninetales, Lapras, Aerodactyl, Moltres, Scizor, Kingdra, Dark Blastoise, Dark Dragonite, Sylveon VMAX, Gengar VMAX, Gardevoir ex, Venusaur ex, Blastoise ex, Kangaskhan, Pinsir, Dragonair) com sub-consultas para integridade referencial.

