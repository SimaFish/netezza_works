-- =============================================================================
--  Function      : sct$get_test_value
-- =============================================================================
--  Author        : Andriy (Andrii) Oseledko
--  Version       : 1.0
--  Creation date : 12.11.2019
--  Last modified : 12.11.2019
--  Language      : NZPLSQL
-- =============================================================================
--  Description   : Returns literal representation of evaluated expression,
--                : casted to a specified data type.
--                : 
--                : Requires `bintohex` function in order to perform binary to
--                : hexadecimal (HEX) data conversion, regarding support of
--                : VARBINARY and ST_GEOMETRY data types.
--                : 
--                : Link: https://www.ibm.com/support/knowledgecenter/en/
--                : SSULQD_7.2.1/com.ibm.nz.udf.doc/r_udf_bin_hex_convert_funcs.html
-- =============================================================================
--  Parameters    : > $1 argument (p_expression):
--                : Expression, to evaluate and cast to a specified data type.
--                : ------------------------------------------------------------
--                : > $2 argument (p_datatype):
--                : Data type to which to cast the expression after evaluation.
-- =============================================================================

CREATE OR REPLACE PROCEDURE sct$get_test_value (VARCHAR(ANY),
                                                VARCHAR(ANY))
RETURNS VARCHAR(ANY)
LANGUAGE NZPLSQL
AS
BEGIN_PROC
DECLARE
    p_expression ALIAS FOR $1;
    p_datatype ALIAS FOR $2;
    v_expression VARCHAR;
    v_typed_expr VARCHAR;
    v_test_val VARCHAR;
    v_datatype VARCHAR;
    v_dtype_name VARCHAR;
    v_sql_text VARCHAR;
    r_test_rec RECORD;
    /* Date-Time masks */
    c_date_mask CONSTANT VARCHAR := 'YYYY-MM-DD'; /* DATE */
    c_timestamp_mask CONSTANT VARCHAR := 'YYYY-MM-DD HH24:MI:SS.US'; /* TIMESTAMP */
BEGIN
    v_expression := trim(p_expression);
    v_datatype := trim(upper(p_datatype));
    /* Extracting data type name (without precision,scale) */
    v_dtype_name := CASE
                       WHEN instr(v_datatype, '(') = 0 THEN v_datatype
                       ELSE rtrim(substr(v_datatype, 1, instr(v_datatype, '(') - 1))
                    END;
    v_typed_expr := 'CAST(' || v_expression || ' AS ' || v_datatype || ')';

    BEGIN
        EXECUTE IMMEDIATE 'SELECT ' || v_typed_expr;
    EXCEPTION
        WHEN OTHERS THEN
        /* Constructing the new type expression from modified literal */
        v_typed_expr := CASE
                           WHEN v_dtype_name IN ('VARBINARY', 'ST_GEOMETRY')
                           THEN CASE instr(v_expression, '''')
                                   WHEN 1 THEN 'hex_to_binary(' || v_expression || ')'
                                   ELSE 'hex_to_binary(''' || v_expression || ''')'
                                END
                           ELSE 'CAST(''' || v_expression || ''' AS ' || v_datatype || ')'
                        END;
    END;

    IF UPPER(v_expression) = 'NULL'
    THEN
        v_test_val := 'NULL';
    /* BOOL[EAN] */
    ELSEIF v_dtype_name IN ('BOOL', 'BOOLEAN')
    THEN
        v_sql_text := 'SELECT CASE ' ||
                                'WHEN ' || v_typed_expr || ' THEN ''TRUE'' ' ||
                                'ELSE ''FALSE'' ' ||
                             'END AS test_val';
    /* [N]CHAR[ACTER], [NATIONAL ]CHAR[ACTER],
       [N]VARCHAR, [NATIONAL ]CHAR[ACTER] [VARYING] */
    ELSEIF v_dtype_name IN ('CHAR', 'CHARACTER',
                            'NCHAR', 'NATIONAL CHAR', 'NATIONAL CHARACTER',
                            'VARCHAR', 'CHAR VARYING', 'CHARACTER VARYING',
                            'NVARCHAR', 'NATIONAL CHAR VARYING', 'NATIONAL CHARACTER VARYING')
    THEN
        v_sql_text := 'SELECT ' || v_typed_expr || ' AS test_val';
    /* DATE, TIMESTAMP, DATETIME */
    ELSEIF v_dtype_name IN ('DATE', 'TIMESTAMP', 'DATETIME')
    THEN
        v_sql_text := 'SELECT to_char(' || v_typed_expr || ', ''' ||
                                      CASE v_dtype_name
                                         WHEN 'DATE' THEN c_date_mask
                                         ELSE c_timestamp_mask
                                      END || ''') AS test_val';
    /* TIME[ WITHOUT TIME ZONE] */
    ELSEIF v_dtype_name IN ('TIME', 'TIME WITHOUT TIME ZONE')
    THEN
        v_sql_text := 'WITH vw_time AS (SELECT ' || v_typed_expr || ' AS test_expr) ' ||
                      'SELECT lpad(date_part(''HOUR'', test_expr), 2, ''0'') || '':'' || ' ||
                             'lpad(date_part(''MINUTE'', test_expr), 2, ''0'') || '':'' || ' ||
                             'lpad(date_part(''SECOND'', test_expr), 2, ''0'') || ''.'' || ' ||
                             'substr(lpad(date_part(''MICROSECOND'', test_expr), 8, ''0''), 3) AS test_val ' ||
                       'FROM vw_time';
    /* INTERVAL, TIMESPAN,
       BYTEINT, SMALLINT, INTEGER, BIGINT, INT[1|2|4|8],
       NUMERIC, DEC[IMAL], REAL, FLOAT[4|8], DOUBLE[ PRECISION] */
    ELSEIF v_dtype_name IN ('INTERVAL', 'TIMESPAN',
                            'BYTEINT', 'INT1', 'SMALLINT', 'INT2',
                            'INTEGER', 'INT', 'INT4', 'BIGINT', 'INT8',
                            'NUMERIC', 'DEC', 'DECIMAL',
                            'REAL', 'FLOAT', 'FLOAT4', 'FLOAT8',
                            'DOUBLE', 'DOUBLE PRECISION')
    THEN
        v_sql_text := 'SELECT CAST(' || v_typed_expr || ' AS VARCHAR(500)) AS test_val';
    /* TIME WITH TIME ZONE, TIMETZ */
    ELSEIF v_dtype_name IN ('TIME WITH TIME ZONE', 'TIMETZ')
    THEN
        v_sql_text := 'WITH vw_time_tz AS (SELECT CAST(' || v_typed_expr || ' AS VARCHAR(100)) AS test_expr) ' ||
                      'SELECT CASE instr(test_expr, '':'', 1, 3) ' ||
                                'WHEN 0 THEN test_expr || '':00'' ' ||
                                'ELSE test_expr ' ||
                             'END AS test_val ' ||
                       'FROM vw_time_tz';
    /* VARBINARY, ST_GEOMETRY */
    ELSEIF v_dtype_name IN ('VARBINARY', 'ST_GEOMETRY')
    THEN
        v_sql_text := NULL; /* require `bintohex` function */
    END IF;

    IF v_sql_text IS NOT NULL
    THEN
        FOR r_test_rec IN EXECUTE v_sql_text
        LOOP
            v_test_val := r_test_rec.test_val;
        END LOOP;
    END IF;

    RETURN v_test_val;
EXCEPTION
    WHEN OTHERS THEN
    --Explain the error details when occured
    RAISE NOTICE 'Error: %', SQLERRM;
    RAISE NOTICE 'SQLText: %', v_sql_text;
END;
END_PROC;