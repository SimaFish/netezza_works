--BOOLEAN
SELECT sct$get_expr_type('TRUE') --> BOOLEAN

--CHARACTER
SELECT sct$get_expr_type('CAST(''Char'' AS CHAR(20))'); --> CHARACTER(20)

--NATIONAL CHARACTER
SELECT sct$get_expr_type('CAST(''NChar'' AS NCHAR(20))'); --> 'NATIONAL CHARACTER(20)'

--CHARACTER VARYING
SELECT sct$get_expr_type('CAST(''Varchar'' AS VARCHAR(50))'); --> 'CHARACTER VARYING(50)'

--NATIONAL CHARACTER VARYING
SELECT sct$get_expr_type('CAST(''NVarchar'' AS NVARCHAR(50))'); --> 'NATIONAL CHARACTER VARYING(50)'

--DATE
SELECT sct$get_expr_type('to_date(''25.06.2019'', ''DD.MM.YYYY'')') --> DATE

--TIMESTAMP
SELECT sct$get_expr_type('to_timestamp(''01.01.0001 00:00:00'', ''DD.MM.YYYY HH24:MI:SS'')') --> TIMESTAMP

--TIME
SELECT sct$get_expr_type('CAST(''15:45:30.245'' AS TIME)') --> TIME

--TIME WITH TIME ZONE
SELECT sct$get_expr_type('CAST(''15:45:30.245+01:30'' AS TIME WITH TIME ZONE)') --> TIME WITH TIME ZONE

--INTERVAL
SELECT sct$get_expr_type('CAST(''10 years 18 months 7 days'' AS INTERVAL)') --> INTERVAL

--BYTEINT
SELECT sct$get_expr_type('CAST(120 AS BYTEINT)'); --> BYTEINT

--SMALLINT
SELECT sct$get_expr_type('CAST(-21564 AS SMALLINT)'); --> SMALLINT

--INTEGER
SELECT sct$get_expr_type('CAST(2042483647 + 245 AS INTEGER)'); --> INTEGER

--BIGINT
SELECT sct$get_expr_type('CAST(676225220368547758 AS BIGINT)'); --> BIGINT

--NUMERIC
SELECT sct$get_expr_type('CAST(''1763.425'' AS DECIMAL)'); --> NUMERIC(7,3)

--REAL
SELECT sct$get_expr_type('CAST(''-3.4E+38'' AS REAL)'); --> REAL

--DOUBLE PRECISION
SELECT sct$get_expr_type('CAST(''2.226E-308'' AS DOUBLE PRECISION)'); --> DOUBLE PRECISION

--VARBINARY
SELECT sct$get_expr_type('hex_to_binary(''0BDF02998968884239D00198'')') --> VARBINARY(12)

--ST_GEOMETRY
SELECT sct$get_expr_type('hex_to_geometry(''0030A0E30020A0E30210A0'')') --> ST_GEOMETRY(11)