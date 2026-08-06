-- Cargas Iniciais (Seeds) para Populamento do Banco de Dados

-- 1. Inserir Tipos de Pokémon
INSERT INTO tbl_types (name) VALUES
    ('Colorless'),
    ('Darkness'),
    ('Dragon'),
    ('Fairy'),
    ('Fighting'),
    ('Fire'),
    ('Grass'),
    ('Lightning'),
    ('Metal'),
    ('Psychic'),
    ('Water')
ON CONFLICT (name) DO NOTHING;

-- 2. Inserir Estágios das Cartas
INSERT INTO tbl_stages (name) VALUES
    ('Basic'),
    ('Stage 1'),
    ('Stage 2'),
    ('V'),
    ('VMAX'),
    ('VSTAR'),
    ('ex'),
    ('EX'),
    ('MEGA'),
    ('Restored')
ON CONFLICT (name) DO NOTHING;

-- 3. Inserir Coleção de Exemplo (Base Set)
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
VALUES ('Base Set', '1999-01-09', 102)
ON CONFLICT DO NOTHING;

-- 4. Inserir Carta de Exemplo (Pikachu Base Set #58)
INSERT INTO tbl_cards (
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weak,
    resis,
    retreat,
    card_number_in_collection
)
VALUES (
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    40,
    'Pikachu',
    'Mouse Pokémon. Length: 1''4", Weight: 13 lbs.',
    'Gnaw / Thunder Jolt',
    30,
    'Fighting',
    NULL,
    '1 Colorless',
    '58/102'
);
