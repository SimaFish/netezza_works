-- =============================================================================
--  Procedure     : get_expr_type
-- =============================================================================
--  Author        : Andriy (Andrii) Oseledko
--  Version       : 1.0
--  Creation date : 11.11.2019
--  Last modified : 11.11.2019
--  Language      : NZPLSQL
--  Netezza ver.  : 7.2.x
-- =============================================================================
--  Description   : Returns the Netezza data type defined for an expression,
--                : previously created as table T_EXPR_TYPE$TABLE column.
-- =============================================================================

CREATE OR REPLACE PROCEDURE get_expr_type()
RETURNS VARCHAR(ANY)
LANGUAGE NZPLSQL
AS
BEGIN_PROC
DECLARE
    v_expr_type VARCHAR;
BEGIN
    SELECT format_type
      INTO v_expr_type
      FROM _v_relation_column
     WHERE name = 'T_EXPR_TYPE$TABLE'
       AND owner = CURRENT_USER
       AND attnum = 1;

    EXECUTE IMMEDIATE 'DROP TABLE t_expr_type$table IF EXISTS';

    RETURN v_expr_type;
END;
END_PROC;