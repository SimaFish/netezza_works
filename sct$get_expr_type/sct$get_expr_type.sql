-- =============================================================================
--  Procedure     : sct$get_expr_type
-- =============================================================================
--  Author        : Andriy (Andrii) Oseledko
--  Version       : 1.1
--  Creation date : 15.11.2019
--  Last modified : 23.11.2019
--  Language      : NZPLSQL
--  Netezza ver.  : 7.2.x
-- =============================================================================
--  Description   : Returns the data type of Netezza expression, passed in
--                : as a string literal.
-- =============================================================================
--  Parameters    : > $1 argument (p_expression):
--                : Expression as a string literal, to determine its data type.
-- =============================================================================

CREATE OR REPLACE PROCEDURE sct$get_expr_type (VARCHAR(ANY))
RETURNS VARCHAR(ANY)
LANGUAGE NZPLSQL
AS
BEGIN_PROC
DECLARE
    p_expression ALIAS FOR $1;
    v_dtype_name VARCHAR;
    v_dtype_scale VARCHAR;
    v_expr_type VARCHAR;
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE t_sct$expr_type$table IF EXISTS';

    EXECUTE IMMEDIATE 'CREATE TEMP TABLE t_sct$expr_type$table AS ' ||
                      'SELECT ' || p_expression || ' AS expr_val';

    SELECT format_type
      INTO v_expr_type
      FROM _v_relation_column
     WHERE name = 'T_SCT$EXPR_TYPE$TABLE'
       AND schema = CURRENT_SCHEMA
       AND owner = CURRENT_USER
       AND attnum = 1;

    /* Extracting data type name (without precision,scale) */
    v_dtype_name := CASE
                       WHEN instr(v_expr_type, '(') = 0 THEN v_expr_type
                       ELSE substr(v_expr_type, 1, instr(v_expr_type, '(') - 1)
                    END;
    /* Extracting data type precision[,scale] (if exists) */
    v_dtype_scale := CASE
                        WHEN instr(v_expr_type, '(') = 0 THEN ''
                        ELSE substr(v_expr_type, instr(v_expr_type, '('))
                     END;

    v_dtype_name :=
        CASE v_dtype_name
           WHEN 'BINARY VARYING' THEN 'VARBINARY'
           ELSE v_dtype_name
        END;

    RETURN v_dtype_name || v_dtype_scale;
EXCEPTION
    /* Suppress any errors */
    WHEN OTHERS THEN
    RETURN NULL;
END;
END_PROC;
/