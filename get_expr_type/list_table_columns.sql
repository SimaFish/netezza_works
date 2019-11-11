--List table columns and their data types
SELECT a.tablename,
       b.attname AS col_name,
       b.format_type AS col_type,
       b.attnum AS col_num
  FROM _v_table a
       JOIN _v_relation_column b ON (a.objid = b.objid)
 WHERE a.tablename = 'T_EXPR_TYPE'
   AND a.schema = 'TEST_NETEZZA_GLUE_TESTER'
 ORDER BY b.attnum;