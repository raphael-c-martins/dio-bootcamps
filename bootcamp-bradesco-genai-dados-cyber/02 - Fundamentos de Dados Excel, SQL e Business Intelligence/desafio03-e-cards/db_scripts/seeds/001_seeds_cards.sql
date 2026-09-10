-- ==============================================================================
-- Cargas Iniciais (Seeds) para Populamento do Banco de Dados - Pokémon TCG
-- Script resiliente para inserção em todas as tabelas:
-- 1. tbl_types
-- 2. tbl_stages
-- 3. tbl_collections
-- 4. tbl_cards
-- ==============================================================================

-- ------------------------------------------------------------------------------
-- 1. Inserir Tipos de Pokémon (tbl_types)
-- ------------------------------------------------------------------------------
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

-- ------------------------------------------------------------------------------
-- 2. Inserir Estágios das Cartas (tbl_stages)
-- ------------------------------------------------------------------------------
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

-- ------------------------------------------------------------------------------
-- 3. Inserir Coleções (tbl_collections)
-- ------------------------------------------------------------------------------
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Base Set', '1999-01-09', 102
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Base Set');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Jungle', '1999-06-16', 64
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Jungle');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Fossil', '1999-10-10', 62
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Fossil');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Team Rocket', '2000-04-24', 83
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Team Rocket');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Neo Genesis', '2000-12-16', 111
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Neo Genesis');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT 'Evolving Skies', '2021-08-27', 237
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = 'Evolving Skies');

INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection)
SELECT '151 (Scarlet & Violet)', '2023-09-22', 207
WHERE NOT EXISTS (SELECT 1 FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)');

-- ------------------------------------------------------------------------------
-- 4. Inserir Cartas Pokémon (tbl_cards)
-- ------------------------------------------------------------------------------
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
) VALUES
-- --- Base Set ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    120,
    'Charizard',
    'Flame Pokémon. Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
    'Fire Spin',
    100,
    'Water',
    'Fighting -30',
    '3 Colorless',
    '4/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Blastoise',
    'Shellfish Pokémon. A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.',
    'Hydro Pump',
    40,
    'Lightning',
    NULL,
    '3 Colorless',
    '2/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Venusaur',
    'Seed Pokémon. This plant blooms when it absorbing solar energy. It stays on the move to seek sunlight.',
    'Solarbeam',
    60,
    'Fire',
    NULL,
    '2 Colorless',
    '15/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    40,
    'Pikachu',
    'Mouse Pokémon. When several of these Pokémon gather, their electricity can cause lightning storms.',
    'Thunder Jolt',
    30,
    'Fighting',
    NULL,
    '1 Colorless',
    '58/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    60,
    'Mewtwo',
    'Genetic Pokémon. A Pokémon created by a scientist after years of horrific gene splicing and DNA engineering.',
    'Psychic',
    10,
    'Psychic',
    NULL,
    '2 Colorless',
    '10/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Machamp',
    'Superpower Pokémon. Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.',
    'Seismic Toss',
    60,
    'Psychic',
    NULL,
    '3 Colorless',
    '8/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    100,
    'Gyarados',
    'Atrocious Pokémon. Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.',
    'Dragon Rage',
    50,
    'Grass',
    'Fighting -30',
    '3 Colorless',
    '6/102'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    80,
    'Alakazam',
    'Psi Pokémon. Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.',
    'Confuse Ray',
    30,
    'Psychic',
    NULL,
    '3 Colorless',
    '1/102'
),

-- --- Jungle ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    90,
    'Snorlax',
    'Sleeping Pokémon. Very lazy. Just eats and sleeps. As its belly bulges, it becomes progressively more lethargic.',
    'Body Slam',
    30,
    'Fighting',
    'Psychic -30',
    '4 Colorless',
    '11/64'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Jolteon',
    'Lightning Pokémon. It accumulates negative ions in the atmosphere to blast 10,000-volt lightning bolts.',
    'Pin Missile',
    20,
    'Fighting',
    NULL,
    '1 Colorless',
    '4/64'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Vaporeon',
    'Bubble Jet Pokémon. Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.',
    'Water Gun',
    30,
    'Lightning',
    NULL,
    '1 Colorless',
    '12/64'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Flareon',
    'Flame Pokémon. When storing thermal energy in its body, its temperature can soar to over 1,400 degrees Fahrenheit.',
    'Flamethrower',
    60,
    'Water',
    NULL,
    '1 Colorless',
    '3/64'
),

-- --- Fossil ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    80,
    'Gengar',
    'Shadow Pokémon. Under a full moon, if shadows start to move and laugh, it is acting on Gengar''s behalf.',
    'Dark Mind',
    30,
    NULL,
    'Fighting -30',
    '1 Colorless',
    '5/62'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Dragon' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Dragonite',
    'Dragon Pokémon. An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.',
    'Slam',
    40,
    NULL,
    'Fighting -30',
    '2 Colorless',
    '4/62'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    80,
    'Zapdos',
    'Electric Pokémon. A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.',
    'Thunderstorm',
    60,
    NULL,
    'Fighting -30',
    '2 Colorless',
    '15/62'
),

-- --- Team Rocket ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Darkness' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    80,
    'Dark Charizard',
    'Flame Pokémon. Seemingly possessed by evil energy, its fiery breath is dark and scorching hot.',
    'Continuous Fireball',
    50,
    'Water',
    'Fighting -30',
    '3 Colorless',
    '4/83'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Dark Raichu',
    'Mouse Pokémon. Extremely aggressive and quick-tempered when manipulated by Team Rocket handlers.',
    'Surprise Thunder',
    30,
    'Fighting',
    NULL,
    '1 Colorless',
    '83/83'
),

-- --- Neo Genesis ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    90,
    'Lugia',
    'Diving Pokémon. It is said that it quietens raging seas. It causes 40-day storms merely by flapping its wings.',
    'Elemental Blast',
    90,
    'Psychic',
    'Fighting -30',
    '2 Colorless',
    '9/111'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Typhlosion',
    'Volcano Pokémon. If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.',
    'Flame Burst',
    60,
    'Water',
    NULL,
    '1 Colorless',
    '17/111'
),

-- --- Evolving Skies ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Dragon' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VMAX' LIMIT 1),
    320,
    'Rayquaza VMAX',
    'Sky High Pokémon. It flies endlessly through the ozone layer. It feeds on water and particles in the atmosphere.',
    'Max Burst',
    180,
    NULL,
    NULL,
    '2 Colorless',
    '218/203'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Darkness' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VMAX' LIMIT 1),
    310,
    'Umbreon VMAX',
    'Moonlight Pokémon. When exposed to the moon''s aura, the rings on its body glow and a mysterious energy awakens.',
    'Max Darkness',
    160,
    'Grass',
    NULL,
    '2 Colorless',
    '215/203'
),

-- --- 151 (Scarlet & Violet) ---
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    330,
    'Charizard ex',
    'Flame Pokémon. Powerful Tera ex card capable of burning down any opponent with high damage Output.',
    'Explosive Vortex',
    330,
    'Water',
    NULL,
    '2 Colorless',
    '199/165'
),
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    310,
    'Alakazam ex',
    'Psi Pokémon. Uses dimensional attacks from the bench to overwhelm opposing Pokémon.',
    'Dimensional Hand',
    120,
    'Darkness',
    'Fighting -30',
    '1 Colorless',
    '201/165'
);
