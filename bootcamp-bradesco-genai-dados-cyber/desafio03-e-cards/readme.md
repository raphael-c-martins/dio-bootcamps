# Pokémon TCG Cards & Collections Database (PostgreSQL)

Este repositório contém os scripts DDL e cargas iniciais (seeds) para modelagem e gerenciamento de cartas de Pokémon TCG e suas coleções em um banco de dados **PostgreSQL**.

---

## 📐 Estrutura do Banco de Dados (3ª Forma Normal - 3NF)

A arquitetura foi projetada garantindo integridade referencial e eliminação de redundâncias:

```mermaid
erDiagram
    tbl_collections ||--o{ tbl_cards : "contém"
    tbl_types ||--o{ tbl_cards : "classifica"
    tbl_stages ||--o{ tbl_cards : "define estágio"

    tbl_collections {
        int id PK
        varchar collection_set_name
        date release_date
        int total_cards_in_collection
        timestamp created_at
    }

    tbl_types {
        int id PK
        varchar name UK
    }

    tbl_stages {
        int id PK
        varchar name UK
    }

    tbl_cards {
        int id PK
        int collection_id FK
        int type_id FK
        int stage_id FK
        int hp
        varchar name
        text info
        varchar attack
        int damage
        varchar weak
        varchar resis
        varchar retreat
        varchar card_number_in_collection
        timestamp created_at
    }
```

---

## 📂 Arquivos de Script

- **DDL da Estrutura:** [db_scripts/tables/001_create_card_table.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/tables/001_create_card_table.sql)
  - Cria as tabelas `tbl_collections`, `tbl_types`, `tbl_stages` e `tbl_cards` com relacionamentos de Chaves Estrangeiras (`FK`).
  - Inclui restrições de integridade (`UNIQUE` em `collection_set_name` e `uq_card_collection_number`) e índices de alta performance para otimização de consultas.
- **Seeds Iniciais:** [db_scripts/seeds/001_initial_seed.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/001_initial_seed.sql)
  - Carga de dados inicial e idempotente para todas as tabelas: 11 tipos de Pokémon, 10 estágios, 7 coleções icônicas e 23 cartas representativas (clássicas e modernas).
- **Lote 1 de Cartas (Seeds):** [db_scripts/seeds/002_bulk_cards-1.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/002_bulk_cards-1.sql)
  - Carga complementar com 20 registros adicionais de cartas Pokémon TCG.
- **Lote 2 de Cartas (Seeds):** [db_scripts/seeds/003_bulk_cards-2.sql](file:///d:/WebApps_Programas_Scripts/dio-bootcamps/bootcamp-bradesco-genai-dados-cyber/desafio03-e-cards/db_scripts/seeds/003_bulk_cards-2.sql)
  - Carga massiva com 30 novos registros de cartas (linhas evolutivas Kanto, lendários, VSTAR, ex e VMAX).

---

## 🚀 Como Executar no PostgreSQL

1. **Criar as Tabelas:**
   ```bash
   psql -U seu_usuario -d seu_banco -f db_scripts/tables/001_create_card_table.sql
   ```

2. **Inserir Dados Iniciais e Lotes (Seeds):**
   ```bash
   psql -U seu_usuario -d seu_banco -f db_scripts/seeds/001_initial_seed.sql
   psql -U seu_usuario -d seu_banco -f db_scripts/seeds/002_bulk_cards-1.sql
   psql -U seu_usuario -d seu_banco -f db_scripts/seeds/003_bulk_cards-2.sql
   ```
