-- Script DDL para PostgreSQL - Pokemon TCG Cards, Collections, Types & Stages

-- 1. Tabela de Coleções (Tabela Dominial / Pai)
CREATE TABLE IF NOT EXISTS tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(150) NOT NULL,
    release_date DATE,
    total_cards_in_collection INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabela de Tipos de Pokémon (ex: Grass, Fire, Water, Electric, etc.)
CREATE TABLE IF NOT EXISTS tbl_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- 3. Tabela de Estágios da Carta (ex: Basic, Stage 1, Stage 2, VMAX, VSTAR, EX)
CREATE TABLE IF NOT EXISTS tbl_stages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- 4. Tabela Principal de Cartas (tbl_cards)
CREATE TABLE IF NOT EXISTS tbl_cards (
    id SERIAL PRIMARY KEY,
    collection_id INT NOT NULL,
    type_id INT NOT NULL,
    stage_id INT NOT NULL,
    hp INT,
    name VARCHAR(100) NOT NULL,
    info TEXT,
    attack VARCHAR(100),
    damage INT,
    weak VARCHAR(50),
    resis VARCHAR(50),
    retreat VARCHAR(50),
    card_number_in_collection VARCHAR(20),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    -- Relacionamentos de Chaves Estrangeiras (FKs)
    CONSTRAINT fk_cards_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_cards_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types(id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_cards_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages(id)
        ON DELETE RESTRICT
);

-- Índices de Alta Performance para busca e filtros relacionais
CREATE INDEX IF NOT EXISTS idx_cards_collection_id ON tbl_cards(collection_id);
CREATE INDEX IF NOT EXISTS idx_cards_type_id ON tbl_cards(type_id);
CREATE INDEX IF NOT EXISTS idx_cards_stage_id ON tbl_cards(stage_id);
CREATE INDEX IF NOT EXISTS idx_cards_name ON tbl_cards(name);
