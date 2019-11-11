-- =============================================================================
--  Function      : get_expr_type
-- =============================================================================
--  Author        : Andriy (Andrii) Oseledko
--  Version       : 1.0
--  Creation date : 11.11.2019
--  Last modified : 11.11.2019
--  Language      : NZPLSQL
--  Netezza ver.  : 7.2.x
-- =============================================================================
--  Description   : Returns the Netezza data type defined for an expression,
--                : previously created as table T_EXPR_TYPE
--                : (schema TEST_NETEZZA_GLUE_TESTER) column.
--                : 
--                : All the appropriate privileges (SELECT, DROP) should be
--                : granted in order for this procedure to work properly.
-- =============================================================================

CREATE OR REPLACE PROCEDURE get_expr_type()
RETURNS VARCHAR(ANY)
LANGUAGE NZPLSQL
AS
BEGIN_PROC
DECLARE
    v_expr_type VARCHAR;
BEGIN
    SELECT b.format_type
      INTO v_expr_type
      FROM _v_table a
           JOIN _v_relation_column b ON (a.objid = b.objid)
     WHERE a.tablename = 'T_EXPR_TYPE'
       AND a.schema = 'TEST_NETEZZA_GLUE_TESTER'
       AND b.attnum = 1;

    EXECUTE IMMEDIATE 'DROP TABLE t_expr_type IF EXISTS';

    RETURN v_expr_type;
END;
END_PROC;