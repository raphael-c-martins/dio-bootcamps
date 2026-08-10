-- ==============================================================================
-- Consulta DML em PostgreSQL - Seleção Campo por Campo da View vw_cards_details
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
