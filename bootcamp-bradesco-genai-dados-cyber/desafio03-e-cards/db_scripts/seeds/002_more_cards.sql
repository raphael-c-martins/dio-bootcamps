-- ==============================================================================
-- Cargas Adicionais de Cartas Pokémon TCG (20 novos registros)
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
    'New Species Pokémon. A Pokémon of miraculous rarity. It is said to possess the genetic composition of all Pokémon.',
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
    'Legendary Pokémon. A Pokémon that has long been admired for its beauty. It runs gracefully as if on wings.',
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
    'Gas Pokémon. Because of its ability to slip through solid walls, it is said to be from another dimension.',
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
    'Mouse Pokémon. Its long tail serves as a ground to protect itself from its own high voltage power.',
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
    'Fox Pokémon. Very smart and very vindictive. Grabbing one of its 9 tails could result in a 1,000-year curse.',
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
    'Transport Pokémon. A Pokémon that has been overhunted almost to extinction. It can ferry people across water.',
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
    'Fossil Pokémon. A ferocious, prehistoric Pokémon that goes for the enemy''s throat with its serrated teeth.',
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
    'Flame Pokémon. Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.',
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
    'Scissors Pokémon. It swings its eye-patterned pincers up to intimidate its foes. This makes it look like it has three heads.',
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
    'Dragon Pokémon. It is said that it usually hides in underwater caves. It can create whirlpools by yawning.',
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
    'Shellfish Pokémon. An aggressive Pokémon that uses high pressure water cannons to smash through steel walls.',
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
    'Dragon Pokémon. Seemingly ruthless, it flies at Mach 2 speeds over oceans seeking targets.',
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
    'Intertwining Pokémon. It wraps its ribbonlike feelers around its beloved Trainer''s arm as they walk together.',
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
    'Shadow Pokémon. It swallows everything around it, expanding its mouth into a cavern of endless dark energy.',
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
    'Embrace Pokémon. It will unleash its psychokinetic power at full force to protect a Trainer it trusts.',
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
    'Seed Pokémon. A large flower blooms on Venusaur''s back. The flower is said to take on vivid colors if it gets plenty of sunlight.',
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
    'Shellfish Pokémon. It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.',
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
    'Parent Pokémon. The infant rarely ventures out of its mother''s protective pouch until it is three years old.',
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
    'Stagbeetle Pokémon. If it fails to crush the foe in its pincers, it will swing its victim around and toss it hard.',
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
    'Dragon Pokémon. A mystical Pokémon that exudes a gentle aura. Said to have the ability to change weather conditions.',
    'Hyper Beam',
    20,
    NULL,
    'Psychic -30',
    '2 Colorless',
    '18/102'
);
