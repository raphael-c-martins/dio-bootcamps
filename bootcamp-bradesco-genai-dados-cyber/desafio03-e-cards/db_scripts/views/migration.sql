-- ==============================================================================
-- View SQL para PostgreSQL - Detalhamento das Cartas de PokÃ©mon TCG
-- Substitui as chaves estrangeiras (IDs) pelos nomes legÃ­veis das tabelas relacionais:
-- - tbl_collections.collection_set_name
-- - tbl_types.name
-- - tbl_stages.name
-- Arquivo: db_scripts/views/001_create_cards_view.sql
-- ==============================================================================

CREATE OR REPLACE VIEW vw_cards_details AS
SELECT 
    c.id AS card_id,
    c.name AS card_name,
    col.collection_set_name AS collection_name,
    t.name AS type_name,
    s.name AS stage_name,
    c.hp,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.card_number_in_collection,
    col.release_date AS collection_release_date,
    c.created_at AS card_created_at
FROM tbl_cards c
INNER JOIN tbl_collections col ON c.collection_id = col.id
INNER JOIN tbl_types t ON c.type_id = t.id
INNER JOIN tbl_stages s ON c.stage_id = s.id;


-- ==============================================================================
-- Consulta DML em PostgreSQL - SeleÃ§Ã£o Campo por Campo da View vw_cards_details
-- Arquivo: db_scripts/views/002_select_cards_view.sql
-- ==============================================================================

SELECT 
    card_id,
    card_name,
    collection_name,
    type_name,
    stage_name,
    hp,
    info,
    attack,
    damage,
    weak,
    resis,
    retreat,
    card_number_in_collection,
    collection_release_date,
    card_created_at
FROM vw_cards_details;


