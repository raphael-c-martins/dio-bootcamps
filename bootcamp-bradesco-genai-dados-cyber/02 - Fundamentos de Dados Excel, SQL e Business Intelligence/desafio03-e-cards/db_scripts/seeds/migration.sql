-- ==============================================================================
-- Cargas Iniciais (Seeds) para Populamento do Banco de Dados - PokÃ©mon TCG
-- Script resiliente para inserÃ§Ã£o em todas as tabelas:
-- 1. tbl_types
-- 2. tbl_stages
-- 3. tbl_collections
-- 4. tbl_cards
-- ==============================================================================

-- ------------------------------------------------------------------------------
-- 1. Inserir Tipos de PokÃ©mon (tbl_types)
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
-- 2. Inserir EstÃ¡gios das Cartas (tbl_stages)
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
-- 3. Inserir ColeÃ§Ãµes (tbl_collections)
-- ------------------------------------------------------------------------------
INSERT INTO tbl_collections (collection_set_name, release_date, total_cards_in_collection) VALUES
    ('Base Set', '1999-01-09', 102),
    ('Jungle', '1999-06-16', 64),
    ('Fossil', '1999-10-10', 62),
    ('Team Rocket', '2000-04-24', 83),
    ('Neo Genesis', '2000-12-16', 111),
    ('Evolving Skies', '2021-08-27', 237),
    ('151 (Scarlet & Violet)', '2023-09-22', 207)
ON CONFLICT (collection_set_name) DO NOTHING;

-- ------------------------------------------------------------------------------
-- 4. Inserir Cartas PokÃ©mon (tbl_cards)
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
    'Flame PokÃ©mon. Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
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
    'Shellfish PokÃ©mon. A brutal PokÃ©mon with pressurized water jets on its shell. They are used for high-speed tackles.',
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
    'Seed PokÃ©mon. This plant blooms when it absorbing solar energy. It stays on the move to seek sunlight.',
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
    'Mouse PokÃ©mon. When several of these PokÃ©mon gather, their electricity can cause lightning storms.',
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
    'Genetic PokÃ©mon. A PokÃ©mon created by a scientist after years of horrific gene splicing and DNA engineering.',
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
    'Superpower PokÃ©mon. Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.',
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
    'Atrocious PokÃ©mon. Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.',
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
    'Psi PokÃ©mon. Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.',
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
    'Sleeping PokÃ©mon. Very lazy. Just eats and sleeps. As its belly bulges, it becomes progressively more lethargic.',
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
    'Lightning PokÃ©mon. It accumulates negative ions in the atmosphere to blast 10,000-volt lightning bolts.',
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
    'Bubble Jet PokÃ©mon. Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.',
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
    'Flame PokÃ©mon. When storing thermal energy in its body, its temperature can soar to over 1,400 degrees Fahrenheit.',
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
    'Shadow PokÃ©mon. Under a full moon, if shadows start to move and laugh, it is acting on Gengar''s behalf.',
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
    'Dragon PokÃ©mon. An extremely rarely seen marine PokÃ©mon. Its intelligence is said to match that of humans.',
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
    'Electric PokÃ©mon. A legendary bird PokÃ©mon that is said to appear from clouds while dropping enormous lightning bolts.',
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
    'Flame PokÃ©mon. Seemingly possessed by evil energy, its fiery breath is dark and scorching hot.',
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
    'Mouse PokÃ©mon. Extremely aggressive and quick-tempered when manipulated by Team Rocket handlers.',
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
    'Diving PokÃ©mon. It is said that it quietens raging seas. It causes 40-day storms merely by flapping its wings.',
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
    'Volcano PokÃ©mon. If its rage peaks, it becomes so hot that anything that touches it will instantly go up in flames.',
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
    'Sky High PokÃ©mon. It flies endlessly through the ozone layer. It feeds on water and particles in the atmosphere.',
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
    'Moonlight PokÃ©mon. When exposed to the moon''s aura, the rings on its body glow and a mysterious energy awakens.',
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
    'Flame PokÃ©mon. Powerful Tera ex card capable of burning down any opponent with high damage Output.',
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
    'Psi PokÃ©mon. Uses dimensional attacks from the bench to overwhelm opposing PokÃ©mon.',
    'Dimensional Hand',
    120,
    'Darkness',
    'Fighting -30',
    '1 Colorless',
    '201/165'
);


-- ==============================================================================
-- Cargas Adicionais de Cartas PokÃ©mon TCG (20 novos registros)
-- Tabela: tbl_cards
-- Arquivo: db_scripts/seeds/002_more_cards.sql
-- ==============================================================================

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
-- 1. Mew (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    60,
    'Mew',
    'New Species PokÃ©mon. A PokÃ©mon of miraculous rarity. It is said to possess the genetic composition of all PokÃ©mon.',
    'Restart',
    20,
    'Darkness',
    'Fighting -30',
    '1 Colorless',
    '151/165'
),

-- 2. Arcanine (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    100,
    'Arcanine',
    'Legendary PokÃ©mon. A PokÃ©mon that has long been admired for its beauty. It runs gracefully as if on wings.',
    'Flamethrower',
    50,
    'Water',
    NULL,
    '3 Colorless',
    '23/102'
),

-- 3. Haunter (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Haunter',
    'Gas PokÃ©mon. Because of its ability to slip through solid walls, it is said to be from another dimension.',
    'Nightmare',
    10,
    NULL,
    'Fighting -30',
    '1 Colorless',
    '29/102'
),

-- 4. Raichu (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    80,
    'Raichu',
    'Mouse PokÃ©mon. Its long tail serves as a ground to protect itself from its own high voltage power.',
    'Thunder',
    60,
    'Fighting',
    NULL,
    '1 Colorless',
    '14/102'
),

-- 5. Ninetales (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    80,
    'Ninetales',
    'Fox PokÃ©mon. Very smart and very vindictive. Grabbing one of its 9 tails could result in a 1,000-year curse.',
    'Fire Blast',
    80,
    'Water',
    NULL,
    '1 Colorless',
    '12/102'
),

-- 6. Lapras (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    80,
    'Lapras',
    'Transport PokÃ©mon. A PokÃ©mon that has been overhunted almost to extinction. It can ferry people across water.',
    'Water Gun',
    20,
    'Lightning',
    NULL,
    '2 Colorless',
    '10/62'
),

-- 7. Aerodactyl (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Aerodactyl',
    'Fossil PokÃ©mon. A ferocious, prehistoric PokÃ©mon that goes for the enemy''s throat with its serrated teeth.',
    'Wing Attack',
    30,
    'Grass',
    'Fighting -30',
    '2 Colorless',
    '1/62'
),

-- 8. Moltres (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    70,
    'Moltres',
    'Flame PokÃ©mon. Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.',
    'Wildfire',
    40,
    NULL,
    'Fighting -30',
    '2 Colorless',
    '12/62'
),

-- 9. Scizor (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Metal' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    80,
    'Scizor',
    'Scissors PokÃ©mon. It swings its eye-patterned pincers up to intimidate its foes. This makes it look like it has three heads.',
    'Heavy Slash',
    50,
    'Fire',
    'Grass -30',
    '2 Colorless',
    '10/111'
),

-- 10. Kingdra (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    90,
    'Kingdra',
    'Dragon PokÃ©mon. It is said that it usually hides in underwater caves. It can create whirlpools by yawning.',
    'Water Cyclone',
    60,
    'Lightning',
    NULL,
    '1 Colorless',
    '8/111'
),

-- 11. Dark Blastoise (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    70,
    'Dark Blastoise',
    'Shellfish PokÃ©mon. An aggressive PokÃ©mon that uses high pressure water cannons to smash through steel walls.',
    'Hydrocannon',
    70,
    'Lightning',
    NULL,
    '2 Colorless',
    '3/83'
),

-- 12. Dark Dragonite (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    70,
    'Dark Dragonite',
    'Dragon PokÃ©mon. Seemingly ruthless, it flies at Mach 2 speeds over oceans seeking targets.',
    'Giant Tail',
    70,
    NULL,
    'Fighting -30',
    '2 Colorless',
    '5/83'
),

-- 13. Sylveon VMAX (Evolving Skies)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VMAX' LIMIT 1),
    310,
    'Sylveon VMAX',
    'Intertwining PokÃ©mon. It wraps its ribbonlike feelers around its beloved Trainer''s arm as they walk together.',
    'Max Harmony',
    190,
    'Metal',
    NULL,
    '2 Colorless',
    '212/203'
),

-- 14. Gengar VMAX (Evolving Skies)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Darkness' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VMAX' LIMIT 1),
    320,
    'Gengar VMAX',
    'Shadow PokÃ©mon. It swallows everything around it, expanding its mouth into a cavern of endless dark energy.',
    'Fear Panic',
    240,
    'Fighting',
    NULL,
    '3 Colorless',
    '157/264'
),

-- 15. Gardevoir ex (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    310,
    'Gardevoir ex',
    'Embrace PokÃ©mon. It will unleash its psychokinetic power at full force to protect a Trainer it trusts.',
    'Miracle Force',
    190,
    'Darkness',
    'Fighting -30',
    '2 Colorless',
    '086/198'
),

-- 16. Venusaur ex (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    340,
    'Venusaur ex',
    'Seed PokÃ©mon. A large flower blooms on Venusaur''s back. The flower is said to take on vivid colors if it gets plenty of sunlight.',
    'Toxic Whip',
    150,
    'Fire',
    NULL,
    '4 Colorless',
    '198/165'
),

-- 17. Blastoise ex (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    330,
    'Blastoise ex',
    'Shellfish PokÃ©mon. It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.',
    'Twin Cannons',
    280,
    'Lightning',
    NULL,
    '3 Colorless',
    '200/165'
),

-- 18. Kangaskhan (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    90,
    'Kangaskhan',
    'Parent PokÃ©mon. The infant rarely ventures out of its mother''s protective pouch until it is three years old.',
    'Comet Punch',
    40,
    'Fighting',
    'Psychic -30',
    '3 Colorless',
    '5/64'
),

-- 19. Pinsir (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    60,
    'Pinsir',
    'Stagbeetle PokÃ©mon. If it fails to crush the foe in its pincers, it will swing its victim around and toss it hard.',
    'Guillotine',
    50,
    'Fire',
    NULL,
    '1 Colorless',
    '9/64'
),

-- 20. Dragonair (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    80,
    'Dragonair',
    'Dragon PokÃ©mon. A mystical PokÃ©mon that exudes a gentle aura. Said to have the ability to change weather conditions.',
    'Hyper Beam',
    20,
    NULL,
    'Psychic -30',
    '2 Colorless',
    '18/102'
);


-- ==============================================================================
-- Cargas Adicionais de Cartas PokÃ©mon TCG (30 novos registros)
-- Tabela: tbl_cards
-- Arquivo: db_scripts/seeds/003_bulk_cards-2.sql
-- ==============================================================================

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
-- 1. Charmander (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    50,
    'Charmander',
    'Lizard PokÃ©mon. Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
    'Scratch / Ember',
    30,
    'Water',
    NULL,
    '1 Colorless',
    '46/102'
),

-- 2. Charmeleon (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    80,
    'Charmeleon',
    'Flame PokÃ©mon. When it swings its burning tail, it elevates the temperature to insanely high levels.',
    'Flamethrower',
    50,
    'Water',
    NULL,
    '1 Colorless',
    '24/102'
),

-- 3. Squirtle (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    40,
    'Squirtle',
    'Tiny Turtle PokÃ©mon. Shoots water at prey while in the water. Withdraws into its shell when in danger.',
    'Bubble / Water Gun',
    20,
    'Lightning',
    NULL,
    '1 Colorless',
    '63/102'
),

-- 4. Wartortle (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Wartortle',
    'Turtle PokÃ©mon. Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
    'Bite / Hydro Pump',
    40,
    'Lightning',
    NULL,
    '1 Colorless',
    '42/102'
),

-- 5. Bulbasaur (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    40,
    'Bulbasaur',
    'Seed PokÃ©mon. A strange seed was planted on its back at birth. The plant sprouts and grows with this PokÃ©mon.',
    'Leech Seed',
    20,
    'Fire',
    NULL,
    '1 Colorless',
    '44/102'
),

-- 6. Ivysaur (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Ivysaur',
    'Seed PokÃ©mon. When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
    'Vine Whip',
    30,
    'Fire',
    NULL,
    '1 Colorless',
    '30/102'
),

-- 7. Pidgeot (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    80,
    'Pidgeot',
    'Bird PokÃ©mon. When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.',
    'Hurricane',
    30,
    'Lightning',
    'Fighting -30',
    '0 Colorless',
    '8/64'
),

-- 8. Tyranitar (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Darkness' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Tyranitar',
    'Armor PokÃ©mon. If it rages, it knocks down mountains and fills up rivers. Maps must be redrawn afterward.',
    'Slam / Crunch',
    50,
    'Grass',
    'Psychic -30',
    '3 Colorless',
    '31/111'
),

-- 9. Feraligatr (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    120,
    'Feraligatr',
    'Big Jaw PokÃ©mon. It opens its huge mouth to intimidate enemies. In battle, it runs using its thick legs.',
    'Riptide',
    50,
    'Grass',
    NULL,
    '3 Colorless',
    '5/111'
),

-- 10. Meganium (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    100,
    'Meganium',
    'Herb PokÃ©mon. The aroma that rises from its petals contains a substance that calms aggressive feelings.',
    'Solarbeam',
    60,
    'Fire',
    NULL,
    '2 Colorless',
    '11/111'
),

-- 11. Pichu (Neo Genesis)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Neo Genesis' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    30,
    'Pichu',
    'Tiny Mouse PokÃ©mon. It is still unskilled at storing electricity. It may discharge if startled.',
    'Zzzap',
    20,
    'Fighting',
    NULL,
    '0 Colorless',
    '12/111'
),

-- 12. Slowbro (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Slowbro',
    'Hermit Crab PokÃ©mon. An attached Shellder lives on Slowbro''s tail. As a result, Slowbro can no longer fish with it.',
    'Psyshock',
    20,
    'Psychic',
    NULL,
    '1 Colorless',
    '27/62'
),

-- 13. Muk (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Grass' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Muk',
    'Sludge PokÃ©mon. Thickly covered with toxic slime. It leaves behind poison footprints wherever it moves.',
    'Toxic',
    20,
    'Psychic',
    NULL,
    '2 Colorless',
    '13/62'
),

-- 14. Hitmonlee (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    60,
    'Hitmonlee',
    'Kicking PokÃ©mon. When in a hurry, its legs lengthen progressively. It runs smoothly with extra-long strides.',
    'Stretch Kick / High Jump Kick',
    50,
    'Psychic',
    NULL,
    '1 Colorless',
    '7/62'
),

-- 15. Dark Gyarados (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Dark Gyarados',
    'Atrocious PokÃ©mon. Normally found in deep sea caverns, Team Rocket captured and enraged it.',
    'Ice Beam',
    30,
    'Grass',
    'Fighting -30',
    '2 Colorless',
    '8/83'
),

-- 16. Dark Alakazam (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Psychic' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    60,
    'Dark Alakazam',
    'Psi PokÃ©mon. Its brain cells multiply until human memory fails to measure its psychic capacity.',
    'Mind Shock',
    40,
    'Psychic',
    NULL,
    '3 Colorless',
    '1/83'
),

-- 17. Dark Machamp (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 2' LIMIT 1),
    70,
    'Dark Machamp',
    'Superpower PokÃ©mon. Uses four arms to grab and strike targets with unmatched aggression.',
    'Mega Punch',
    50,
    'Psychic',
    NULL,
    '3 Colorless',
    '10/83'
),

-- 18. Dark Vaporeon (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Dark Vaporeon',
    'Bubble Jet PokÃ©mon. Corrupted by dark energy, its water jet attack dissolves solid obstacles.',
    'Whirlpool',
    20,
    'Lightning',
    NULL,
    '1 Colorless',
    '45/83'
),

-- 19. Dark Jolteon (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    50,
    'Dark Jolteon',
    'Lightning PokÃ©mon. Emits intense lightning bolts that crackle around its dark fur.',
    'Thunder Flash',
    30,
    'Fighting',
    NULL,
    '1 Colorless',
    '33/83'
),

-- 20. Dark Flareon (Team Rocket)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Team Rocket' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fire' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    50,
    'Dark Flareon',
    'Flame PokÃ©mon. Flushes intense thermal heat to burn opponent PokÃ©mon to ashes.',
    'Fluffy Fire',
    30,
    'Water',
    NULL,
    '1 Colorless',
    '35/83'
),

-- 21. Dragonite VSTAR (Evolving Skies)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Dragon' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VSTAR' LIMIT 1),
    280,
    'Dragonite VSTAR',
    'Dragon PokÃ©mon. Uses VSTAR Power to rain down meteors across the battle field.',
    'Giga Impact',
    230,
    NULL,
    NULL,
    '2 Colorless',
    '050/078'
),

-- 22. Lucario ex (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    260,
    'Lucario ex',
    'Aura PokÃ©mon. By sensing the aura of all things, it can determine feelings and movements.',
    'Aura Sphere',
    160,
    'Psychic',
    NULL,
    '2 Colorless',
    '079/198'
),

-- 23. Machamp VMAX (Evolving Skies)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Evolving Skies' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'VMAX' LIMIT 1),
    330,
    'Machamp VMAX',
    'Superpower PokÃ©mon. Dynamax power inflates its four arms to crushing proportions.',
    'Max G-Max Gulp',
    240,
    'Psychic',
    NULL,
    '3 Colorless',
    '073/189'
),

-- 24. Snorlax ex (151)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = '151 (Scarlet & Violet)' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'ex' LIMIT 1),
    260,
    'Snorlax ex',
    'Sleeping PokÃ©mon. Powerful ex card that absorbs damage while sleeping peacefully.',
    'Heavy Impact',
    180,
    'Fighting',
    NULL,
    '4 Colorless',
    '051/091'
),

-- 25. Articuno (Fossil)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Fossil' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Water' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    70,
    'Articuno',
    'Freeze PokÃ©mon. A legendary bird PokÃ©mon that is said to appear to doomed people who are lost in icy mountains.',
    'Freeze Dry / Blizzard',
    50,
    NULL,
    'Fighting -30',
    '2 Colorless',
    '2/62'
),

-- 26. Cubone (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    40,
    'Cubone',
    'Lonely PokÃ©mon. Wears the skull of its deceased mother. It cries mournfully at the full moon.',
    'Snivel / Bone Club',
    20,
    'Grass',
    'Lightning -30',
    '1 Colorless',
    '50/64'
),

-- 27. Marowak (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Fighting' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    60,
    'Marowak',
    'Bone Keeper PokÃ©mon. Small and weak, it took to using bones to overcome its natural frailty.',
    'Bonemerang',
    60,
    'Grass',
    'Lightning -30',
    '1 Colorless',
    '39/64'
),

-- 28. Clefable (Jungle)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Jungle' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Stage 1' LIMIT 1),
    70,
    'Clefable',
    'Fairy PokÃ©mon. A timid fairy PokÃ©mon that is rarely seen. It runs and hides the instant it senses people.',
    'Metronome',
    0,
    'Fighting',
    'Psychic -30',
    '2 Colorless',
    '1/64'
),

-- 29. Electabuzz (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Lightning' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    70,
    'Electabuzz',
    'Electric PokÃ©mon. Normally found near power plants, they can cause major blackouts if they wander into cities.',
    'Thundershock / Thunderpunch',
    40,
    'Fighting',
    NULL,
    '1 Colorless',
    '20/102'
),

-- 30. Chansey (Base Set)
(
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set' LIMIT 1),
    (SELECT id FROM tbl_types WHERE name = 'Colorless' LIMIT 1),
    (SELECT id FROM tbl_stages WHERE name = 'Basic' LIMIT 1),
    120,
    'Chansey',
    'Egg PokÃ©mon. A rare and gentle PokÃ©mon that shares its nutritious eggs with injured people.',
    'Double-edge',
    80,
    'Fighting',
    'Psychic -30',
    '1 Colorless',
    '3/102'
);


