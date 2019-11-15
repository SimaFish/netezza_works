--CTAS (temp table) from expression
CREATE TEMP TABLE t_expr_type$table
AS
SELECT CAST(56185.15434 AS DEC) + 34 AS expr_val;

--Get the type of expression
SELECT get_expr_type() AS expression_type;