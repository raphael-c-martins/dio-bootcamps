-- ==============================================================================
-- Cargas Adicionais de Cartas Pokémon TCG (30 novos registros)
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
    'Lizard Pokémon. Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
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
    'Flame Pokémon. When it swings its burning tail, it elevates the temperature to insanely high levels.',
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
    'Tiny Turtle Pokémon. Shoots water at prey while in the water. Withdraws into its shell when in danger.',
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
    'Turtle Pokémon. Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
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
    'Seed Pokémon. A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.',
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
    'Seed Pokémon. When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
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
    'Bird Pokémon. When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.',
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
    'Armor Pokémon. If it rages, it knocks down mountains and fills up rivers. Maps must be redrawn afterward.',
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
    'Big Jaw Pokémon. It opens its huge mouth to intimidate enemies. In battle, it runs using its thick legs.',
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
    'Herb Pokémon. The aroma that rises from its petals contains a substance that calms aggressive feelings.',
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
    'Tiny Mouse Pokémon. It is still unskilled at storing electricity. It may discharge if startled.',
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
    'Hermit Crab Pokémon. An attached Shellder lives on Slowbro''s tail. As a result, Slowbro can no longer fish with it.',
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
    'Sludge Pokémon. Thickly covered with toxic slime. It leaves behind poison footprints wherever it moves.',
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
    'Kicking Pokémon. When in a hurry, its legs lengthen progressively. It runs smoothly with extra-long strides.',
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
    'Atrocious Pokémon. Normally found in deep sea caverns, Team Rocket captured and enraged it.',
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
    'Psi Pokémon. Its brain cells multiply until human memory fails to measure its psychic capacity.',
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
    'Superpower Pokémon. Uses four arms to grab and strike targets with unmatched aggression.',
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
    'Bubble Jet Pokémon. Corrupted by dark energy, its water jet attack dissolves solid obstacles.',
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
    'Lightning Pokémon. Emits intense lightning bolts that crackle around its dark fur.',
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
    'Flame Pokémon. Flushes intense thermal heat to burn opponent Pokémon to ashes.',
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
    'Dragon Pokémon. Uses VSTAR Power to rain down meteors across the battle field.',
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
    'Aura Pokémon. By sensing the aura of all things, it can determine feelings and movements.',
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
    'Superpower Pokémon. Dynamax power inflates its four arms to crushing proportions.',
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
    'Sleeping Pokémon. Powerful ex card that absorbs damage while sleeping peacefully.',
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
    'Freeze Pokémon. A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.',
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
    'Lonely Pokémon. Wears the skull of its deceased mother. It cries mournfully at the full moon.',
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
    'Bone Keeper Pokémon. Small and weak, it took to using bones to overcome its natural frailty.',
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
    'Fairy Pokémon. A timid fairy Pokémon that is rarely seen. It runs and hides the instant it senses people.',
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
    'Electric Pokémon. Normally found near power plants, they can cause major blackouts if they wander into cities.',
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
    'Egg Pokémon. A rare and gentle Pokémon that shares its nutritious eggs with injured people.',
    'Double-edge',
    80,
    'Fighting',
    'Psychic -30',
    '1 Colorless',
    '3/102'
);
