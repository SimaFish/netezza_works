--BOOL (expression)
SELECT sct$get_test_value('2 > 5', 'BOOL'); --> 'FALSE'

--BOOL (type literal I)
SELECT sct$get_test_value('''true''', 'BOOL'); --> 'TRUE'

--BOOL (type literal II)
SELECT sct$get_test_value('0', 'BOOL'); --> 'FALSE'

--BOOL (type literal III)
SELECT sct$get_test_value('on', 'BOOL'); --> 'TRUE'

--BOOLEAN (expression)
SELECT sct$get_test_value('5 > 2', 'BOOLEAN'); --> 'TRUE'

--BOOLEAN (type literal I)
SELECT sct$get_test_value('''false''', 'BOOLEAN'); --> 'FALSE'

--BOOLEAN (type literal II)
SELECT sct$get_test_value('1', 'BOOLEAN'); --> 'TRUE'

--BOOLEAN (type literal III)
SELECT sct$get_test_value('off', 'BOOLEAN'); --> 'FALSE'

--CHAR (expression)
SELECT sct$get_test_value('TRIM(RPAD(''Char '', 50, ''Char ''))', 'CHAR'); --> 'C'

--CHAR (type literal I)
SELECT sct$get_test_value('''Test456''', 'CHAR'); --> 'T'

--CHAR (type literal II)
SELECT sct$get_test_value('Hello, world!', 'CHAR'); --> 'H'

--CHAR(length) (expression)
SELECT sct$get_test_value('RPAD(''Char '', 100, ''Char '')', 'CHAR(60)'); --> 'Char Char Char Char Char Char Char Char Char Char Char Char '

--CHAR(length) (type literal I)
SELECT sct$get_test_value('''The new firmware is available now''', 'CHAR(55)'); --> 'The new firmware is available now                      '

--CHAR(length) (type literal II)
SELECT sct$get_test_value('These voices are still in testing as part of the new firmware', 'CHAR(70)'); --> 'These voices are still in testing as part of the new firmware         '

--CHARACTER (expression)
SELECT sct$get_test_value('TRIM(RPAD(''Character '', 50, ''Character ''))', 'CHARACTER'); --> 'C'

--CHARACTER (type literal I)
SELECT sct$get_test_value('''Test123''', 'CHARACTER'); --> 'T'

--CHARACTER (type literal II)
SELECT sct$get_test_value('Hello, world!', 'CHARACTER'); --> 'H'

--CHARACTER(length) (expression)
SELECT sct$get_test_value('RPAD(''Character '', 100, ''Character '')', 'CHARACTER(50)'); --> 'Character Character Character Character Character '

--CHARACTER(length) (type literal I)
SELECT sct$get_test_value('''The new firmware is available now''', 'CHARACTER(55)'); --> 'The new firmware is available now                      '

--CHARACTER(length) (type literal II)
SELECT sct$get_test_value('These voices are still in testing as part of the new firmware', 'CHARACTER(75)'); --> 'These voices are still in testing as part of the new firmware              '

--NCHAR (expression)
SELECT sct$get_test_value('TRIM(RPAD(''Char '', 50, ''Char ''))', 'NCHAR'); --> 'C'

--NCHAR (type literal I)
SELECT sct$get_test_value('''Test456''', 'NCHAR'); --> 'T'

--NCHAR (type literal II)
SELECT sct$get_test_value('Hello, world!', 'NCHAR'); --> 'H'

--NCHAR(length) (expression)
SELECT sct$get_test_value('RPAD(''NChar '', 100, ''NChar '')', 'NCHAR(60)'); --> 'NChar NChar NChar NChar NChar NChar NChar NChar NChar NChar '

--NCHAR(length) (type literal I)
SELECT sct$get_test_value('''The new firmware is available now''', 'NCHAR(55)'); --> 'The new firmware is available now                      '

--NCHAR(length) (type literal II)
SELECT sct$get_test_value('These voices are still in testing as part of the new firmware', 'NCHAR(70)'); --> 'These voices are still in testing as part of the new firmware         '

--NATIONAL CHAR (expression)
SELECT sct$get_test_value('TRIM(RPAD(''NCharacter '', 50, ''NCharacter ''))', 'NATIONAL CHAR'); --> 'N'

--NATIONAL CHAR (type literal I)
SELECT sct$get_test_value('''Test123''', 'NATIONAL CHAR'); --> 'T'

--NATIONAL CHAR (type literal II)
SELECT sct$get_test_value('Hello, world!', 'NATIONAL CHAR'); --> 'H'

--NATIONAL CHAR(length) (expression)
SELECT sct$get_test_value('RPAD(''NCharacter '', 100, ''NCharacter '')', 'NATIONAL CHAR(55)'); --> 'NCharacter NCharacter NCharacter NCharacter NCharacter '

--NATIONAL CHAR(length) (type literal I)
SELECT sct$get_test_value('''The new firmware is available now''', 'NATIONAL CHAR(55)'); --> 'The new firmware is available now                      '

--NATIONAL CHAR(length) (type literal II)
SELECT sct$get_test_value('These voices are still in testing as part of the new firmware', 'NATIONAL CHAR(75)'); --> 'These voices are still in testing as part of the new firmware              '

--NATIONAL CHARACTER (expression)
SELECT sct$get_test_value('TRIM(RPAD(''NCharacter '', 50, ''NCharacter ''))', 'NATIONAL CHARACTER'); --> 'N'

--NATIONAL CHARACTER (type literal I)
SELECT sct$get_test_value('''Test456''', 'NATIONAL CHARACTER'); --> 'T'

--NATIONAL CHARACTER (type literal II)
SELECT sct$get_test_value('Hello, world!', 'NATIONAL CHARACTER'); --> 'H'

--NATIONAL CHARACTER(length) (expression)
SELECT sct$get_test_value('RPAD(''NCharacter '', 100, ''NCharacter '')', 'NATIONAL CHARACTER(66)'); --> 'NCharacter NCharacter NCharacter NCharacter NCharacter NCharacter '

--NATIONAL CHARACTER(length) (type literal I)
SELECT sct$get_test_value('''The new firmware is available now''', 'NATIONAL CHARACTER(55)'); --> 'The new firmware is available now                      '

--NATIONAL CHARACTER(length) (type literal II)
SELECT sct$get_test_value('These voices are still in testing as part of the new firmware', 'NATIONAL CHARACTER(70)'); --> 'These voices are still in testing as part of the new firmware         '

--VARCHAR(length) (expression)
SELECT sct$get_test_value('RPAD(''Varchar '', 64, ''Varchar '')', 'VARCHAR(100)'); --> 'Varchar Varchar Varchar Varchar Varchar Varchar Varchar Varchar '

--VARCHAR(length) (type literal I)
SELECT sct$get_test_value('''The voices are broken down into two categories''', 'VARCHAR(100)'); --> 'The voices are broken down into two categories'

--VARCHAR(length) (type literal II)
SELECT sct$get_test_value('A year and a half later, there has barely been any progress', 'VARCHAR(100)'); --> 'A year and a half later, there has barely been any progress'

--CHAR VARYING(length) (expression)
SELECT sct$get_test_value('RPAD(''Char_varying '', 65, ''Char_varying '')', 'CHAR VARYING(100)'); --> 'Char_varying Char_varying Char_varying Char_varying Char_varying '

--CHAR VARYING(length) (type literal I)
SELECT sct$get_test_value('''They have worked together recently last year''', 'CHAR VARYING(100)'); --> 'They have worked together recently last year'

--CHAR VARYING(length) (type literal II)
SELECT sct$get_test_value('Your first smartphone may be gone, but it is not forgotten!', 'CHAR VARYING(100)'); --> 'Your first smartphone may be gone, but it is not forgotten!'

--CHARACTER VARYING(length) (expression)
SELECT sct$get_test_value('RPAD(''Character_varying '', 72, ''Character_varying '')', 'CHARACTER VARYING(100)'); --> 'Character_varying Character_varying Character_varying Character_varying '

--CHARACTER VARYING(length) (type literal I)
SELECT sct$get_test_value('''The new voices are less robotic and more natural''', 'CHARACTER VARYING(100)'); --> 'The new voices are less robotic and more natural'

--CHARACTER VARYING(length) (type literal II)
SELECT sct$get_test_value('The two phones look largely the same outside of their differing sizes', 'CHARACTER VARYING(100)'); --> 'The two phones look largely the same outside of their differing sizes'

--NVARCHAR(length) (expression)
SELECT sct$get_test_value('RPAD(''NVarchar '', 63, ''NVarchar '')', 'NVARCHAR(100)'); --> 'NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar '

--NVARCHAR(length) (type literal I)
SELECT sct$get_test_value('''The voices are broken down into two categories''', 'NVARCHAR(100)'); --> 'The voices are broken down into two categories'

--NVARCHAR(length) (type literal II)
SELECT sct$get_test_value('A year and a half later, there has barely been any progress', 'NVARCHAR(100)'); --> 'A year and a half later, there has barely been any progress'

--NATIONAL CHAR VARYING(length) (expression)
SELECT sct$get_test_value('RPAD(''NVarchar '', 63, ''NVarchar '')', 'NATIONAL CHAR VARYING(100)'); --> 'NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar '

--NATIONAL CHAR VARYING(length) (type literal I)
SELECT sct$get_test_value('''They have worked together recently last year''', 'NATIONAL CHAR VARYING(100)'); --> 'They have worked together recently last year'

--NATIONAL CHAR VARYING(length) (type literal II)
SELECT sct$get_test_value('Your first smartphone may be gone, but it is not forgotten!', 'NATIONAL CHAR VARYING(100)'); --> 'Your first smartphone may be gone, but it is not forgotten!'

--NATIONAL CHARACTER VARYING(length) (expression)
SELECT sct$get_test_value('RPAD(''NVarchar '', 63, ''NVarchar '')', 'NATIONAL CHARACTER VARYING(100)'); --> 'NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar NVarchar '

--NATIONAL CHARACTER VARYING(length) (type literal I)
SELECT sct$get_test_value('''They have worked together recently last year''', 'NATIONAL CHARACTER VARYING(100)'); --> 'They have worked together recently last year'

--NATIONAL CHARACTER VARYING(length) (type literal II)
SELECT sct$get_test_value('Your first smartphone may be gone, but it is not forgotten!', 'NATIONAL CHARACTER VARYING(100)'); --> 'Your first smartphone may be gone, but it is not forgotten!'

--DATE (expression I)
SELECT sct$get_test_value('next_day(to_date(''25.06.2019 01:01:01'', ''DD.MM.YYYY HH24:MI:SS'') + 3, ''MONDAY'')', 'DATE'); --> 2019-07-01

--DATE (expression II)
SELECT sct$get_test_value('DATE ''2004-05-09'' - 2', 'DATE'); --> 2004-05-07

--DATE (type literal I)
SELECT sct$get_test_value('''2013-OCT-19''', 'DATE'); --> 2013-10-19

--DATE (type literal II)
SELECT sct$get_test_value('2056-03-06', 'DATE'); --> 2056-03-06

--TIMESTAMP (expression)
SELECT sct$get_test_value('add_months(to_timestamp(''04-18.2015 15:35:16.235592'', ''MM-DD.YYYY HH12:MI:SS.US''), 2)', 'TIMESTAMP'); --> '2015-06-18 15:35:16.235592'

--TIMESTAMP (type literal I)
SELECT sct$get_test_value('''2003-10-21 14:19:03.148941''', 'TIMESTAMP'); --> '2003-10-21 14:19:03.148941'

--TIMESTAMP (type literal II)
SELECT sct$get_test_value('2019-06-04 18:34:25.123456', 'TIMESTAMP'); --> '2019-06-04 18:34:25.123456'

--DATETIME (expression)
SELECT sct$get_test_value('add_months(CAST(''07-NOV-19 15:42:56.234254'' AS DATETIME), -3)', 'DATETIME'); --> '2019-08-07 15:42:56.234254'

--DATETIME (type literal I)
SELECT sct$get_test_value('''2024-02-01 06:02:03.2842''', 'DATETIME'); --> '2024-02-01 06:02:03.284200'

--DATETIME (type literal II)
SELECT sct$get_test_value('2006-12-19 12:23:25.52528', 'DATETIME'); --> '2006-12-19 12:23:25.525280'

--TIME (expression)
SELECT sct$get_test_value('CAST(''16:17:52.34124'' AS TIME)', 'TIME'); --> 16:17:52.341240

--TIME (type literal I)
SELECT sct$get_test_value('''14:19:03.148941''', 'TIME'); --> 14:19:03.148941

--TIME (type literal II)
SELECT sct$get_test_value('18:34:25.123456', 'TIME'); --> 18:34:25.123456

--TIME WITHOUT TIME ZONE (expression)
SELECT sct$get_test_value('CAST(''05:09:24.8721'' AS TIME WITHOUT TIME ZONE)', 'TIME WITHOUT TIME ZONE'); --> 05:09:24.872100

--TIME WITHOUT TIME ZONE (type literal I)
SELECT sct$get_test_value('''11:23:23.7824''', 'TIME WITHOUT TIME ZONE'); --> 11:23:23.782400

--TIME WITHOUT TIME ZONE (type literal II)
SELECT sct$get_test_value('05:53:45.812534', 'TIME WITHOUT TIME ZONE'); --> 05:53:45.812534

--INTERVAL (expression)
SELECT sct$get_test_value('CAST(''2 years 110 days 10 hours 50 minutes 15 seconds'' AS INTERVAL) + CAST(''2 days'' AS INTERVAL)', 'INTERVAL'); --> '2 years 112 days 10:50:15'

--INTERVAL (type literal I)
SELECT sct$get_test_value('''2 years 27 days 18 hours 21 minutes''', 'INTERVAL'); --> '2 years 27 days 18:21:00'

--INTERVAL (type literal II)
SELECT sct$get_test_value('5 years 567 hours 213 minutes 1425 seconds', 'INTERVAL'); --> '5 years 23 days 18:56:45'

--TIMESPAN (expression)
SELECT sct$get_test_value('CAST(''45 days 13 hours 26 minutes 19 microseconds'' AS TIMESPAN) - CAST(''5 days 15 minutes'' AS TIMESPAN)', 'TIMESPAN'); --> '40 days 13:11:00.000019'

--TIMESPAN (type literal I)
SELECT sct$get_test_value('''35 years 14 days 23:58:26''', 'TIMESPAN'); --> '35 years 14 days 23:58:26'

--TIMESPAN (type literal II)
SELECT sct$get_test_value('5 years 23 days 18:56:45', 'TIMESPAN'); --> '5 years 23 days 18:56:45'

--TIME WITH TIME ZONE (expression)
SELECT sct$get_test_value('CAST(''12:29:17.235692+12:45'' AS TIME WITH TIME ZONE)', 'TIME WITH TIME ZONE'); --> 12:29:17.235692+12:45

--TIME WITH TIME ZONE (type literal I)
SELECT sct$get_test_value('''02:15:39.2581-01:30''', 'TIME WITH TIME ZONE'); --> 02:15:39.2581-01:30

--TIME WITH TIME ZONE (type literal II)
SELECT sct$get_test_value('10:23:31.109414+05:00', 'TIME WITH TIME ZONE'); --> 10:23:31.109414+05:00

--TIMETZ (expression)
SELECT sct$get_test_value('CAST(''18:56:29.314-10:30'' AS TIMETZ)', 'TIMETZ'); --> 18:56:29.314-10:30

--TIMETZ (type literal I)
SELECT sct$get_test_value('''22:17:39.2581-01:30''', 'TIMETZ'); --> 22:17:39.2581-01:30

--TIMETZ (type literal II)
SELECT sct$get_test_value('11:23:37.194714+09:00', 'TIMETZ'); --> 11:23:37.194714+09:00

--DEC (expression)
SELECT sct$get_test_value('CAST(56185.15434 AS DEC) + 34', 'DEC'); --> 56219.15434

--DEC (type literal I)
SELECT sct$get_test_value('''8356167.78''', 'DEC'); --> 8356167.78

--DEC (type literal II)
SELECT sct$get_test_value('-38343.134', 'DEC'); --> -38343.134

--DECIMAL (expression)
SELECT sct$get_test_value('CAST(56185.154 AS DECIMAL) - 754.054', 'DECIMAL'); --> 55431.100

--DECIMAL (type literal I)
SELECT sct$get_test_value('''83561''', 'DECIMAL'); --> 83561

--DECIMAL (type literal II)
SELECT sct$get_test_value('-65467.13', 'DECIMAL'); --> -65467.13

--NUMERIC (expression)
SELECT sct$get_test_value('CAST(2342.4375 AS NUMERIC)', 'NUMERIC'); --> 2342.4375

--NUMERIC (type literal I)
SELECT sct$get_test_value('''98365''', 'NUMERIC'); --> 98365

--NUMERIC (type literal II)
SELECT sct$get_test_value('-156256.68924', 'NUMERIC'); --> -156256.68924

--DEC(precision) (expression)
SELECT sct$get_test_value('CAST(6161457634 AS DEC(10))', 'DEC(10)'); --> 6161457634

--DEC(precision) (type literal I)
SELECT sct$get_test_value('''27814571825291''', 'DEC(14)'); --> 27814571825291

--DEC(precision) (type literal II)
SELECT sct$get_test_value('-21976251', 'DEC(8)'); --> -21976251

--DECIMAL(precision) (expression)
SELECT sct$get_test_value('CAST(8923759203 AS DECIMAL(10))', 'DECIMAL(10)'); --> 8923759203

--DECIMAL(precision) (type literal I)
SELECT sct$get_test_value('''783256987365932''', 'DECIMAL(15)'); --> 783256987365932

--DECIMAL(precision) (type literal II)
SELECT sct$get_test_value('-32452951454', 'DECIMAL(12)'); --> -32452951454

--NUMERIC(precision) (expression)
SELECT sct$get_test_value('CAST(74568254 AS NUMERIC(8))', 'NUMERIC(8)'); --> 74568254

--NUMERIC(precision) (type literal I)
SELECT sct$get_test_value('''2237568264''', 'NUMERIC(10)'); --> 2237568264

--NUMERIC(precision) (type literal II)
SELECT sct$get_test_value('-31543261', 'NUMERIC(8)'); --> -31543261

--DEC(precision,scale) (expression)
SELECT sct$get_test_value('CAST(616145.7634 AS DEC(10,4))', 'DEC(10,4)'); --> 616145.7634

--DEC(precision,scale) (type literal I)
SELECT sct$get_test_value('''278145718.25291''', 'DEC(14,5)'); --> 278145718.25291

--DEC(precision,scale) (type literal II)
SELECT sct$get_test_value('-21976.251', 'DEC(8,3)'); --> -21976.251

--DECIMAL(precision,scale) (expression)
SELECT sct$get_test_value('CAST(616145.7634 AS DECIMAL(10,4))', 'DECIMAL(10,4)'); --> 616145.7634

--DECIMAL(precision,scale) (type literal I)
SELECT sct$get_test_value('''278145718.25291''', 'DECIMAL(14,5)'); --> 278145718.25291

--DECIMAL(precision,scale) (type literal II)
SELECT sct$get_test_value('-21976.251', 'DECIMAL(8,3)'); --> -21976.251

--NUMERIC(precision,scale) (expression)
SELECT sct$get_test_value('CAST(616145.7634 AS NUMBER(10,4))', 'NUMERIC(10,4)'); --> 616145.7634

--NUMERIC(precision,scale) (type literal I)
SELECT sct$get_test_value('''278145718.25291''', 'NUMERIC(14,5)'); --> 278145718.25291

--NUMERIC(precision,scale) (type literal II)
SELECT sct$get_test_value('-21976.251', 'NUMERIC(8,3)'); --> -21976.251

--REAL (expression)
SELECT sct$get_test_value('CAST(9883425.2322 AS REAL)', 'REAL'); --> 9.88342e+06

--REAL (type literal I)
SELECT sct$get_test_value('''4525.345''', 'REAL'); --> 4525.35

--REAL (type literal II)
SELECT sct$get_test_value('317894823.2423', 'REAL'); --> 3.17895e+08

--FLOAT4 (expression)
SELECT sct$get_test_value('CAST(3832845.2322809 AS FLOAT4)', 'FLOAT4'); --> 3.83285e+06

--FLOAT4 (type literal I)
SELECT sct$get_test_value('''2186482.353545''', 'FLOAT4'); --> 2.18648e+06

--FLOAT4 (type literal II)
SELECT sct$get_test_value('5616562.423', 'FLOAT4'); --> 5.61656e+06

--FLOAT(precision) 1-6 (expression)
SELECT sct$get_test_value('CAST(9883425.23242 AS FLOAT(5))', 'FLOAT(5)'); --> 9.88342e+06

--FLOAT(precision) 1-6 (type literal I)
SELECT sct$get_test_value('''2352.464''', 'FLOAT(3)'); --> 2352.46

--FLOAT(precision) 1-6 (type literal II)
SELECT sct$get_test_value('235256.564', 'FLOAT(3)'); --> 235257

--DOUBLE PRECISION (expression)
SELECT sct$get_test_value('CAST(98715424.253337 AS DOUBLE PRECISION) + 25', 'DOUBLE PRECISION'); --> 98715449.253337

--DOUBLE PRECISION (type literal I)
SELECT sct$get_test_value('''252515136.345''', 'DOUBLE PRECISION'); --> 252515136.345

--DOUBLE PRECISION (type literal II)
SELECT sct$get_test_value('153445306.2423', 'DOUBLE PRECISION'); --> 153445306.2423

--DOUBLE (expression)
SELECT sct$get_test_value('CAST(235642.637862 AS DOUBLE) + 456', 'DOUBLE'); --> 236098.637862

--DOUBLE (type literal I)
SELECT sct$get_test_value('''252.563266''', 'DOUBLE'); --> 252.563266

--DOUBLE (type literal II)
SELECT sct$get_test_value('14543615.135344', 'DOUBLE'); --> 14543615.135344

--FLOAT (expression)
SELECT sct$get_test_value('CAST(26342.809 AS FLOAT)', 'FLOAT'); --> 26342.809

--FLOAT (type literal I)
SELECT sct$get_test_value('''2837562.65346''', 'FLOAT'); --> 2837562.65346

--FLOAT (type literal II)
SELECT sct$get_test_value('-72965975.254', 'FLOAT'); --> -72965975.254

--FLOAT(precision) 7-14 (expression)
SELECT sct$get_test_value('CAST(8723696.2352582 AS FLOAT(7))', 'FLOAT(7)'); --> 8723696.2352582

--FLOAT(precision) 7-14 (type literal I)
SELECT sct$get_test_value('''2423.4829523525''', 'FLOAT(10)'); --> 2423.4829523525

--FLOAT(precision) 7-14 (type literal II)
SELECT sct$get_test_value('249.359235256564', 'FLOAT(12)'); --> 249.35923525656

--FLOAT8 (expression)
SELECT sct$get_test_value('CAST(187513238.35389 AS FLOAT8)', 'FLOAT8'); --> 187513238.35389

--FLOAT8 (type literal I)
SELECT sct$get_test_value('''2420552.65346''', 'FLOAT8'); --> 2420552.65346

--FLOAT8 (type literal II)
SELECT sct$get_test_value('-13513.3052254', 'FLOAT8'); --> -13513.3052254

--BYTEINT (expression)
SELECT sct$get_test_value('CAST(120 AS BYTEINT)', 'BYTEINT'); --> 120

--BYTEINT (type literal I)
SELECT sct$get_test_value('''37''', 'BYTEINT'); --> 37

--BYTEINT (type literal II)
SELECT sct$get_test_value('125', 'BYTEINT'); --> 125

--INT1 (expression)
SELECT sct$get_test_value('CAST(124 AS INT1)', 'INT1'); --> 124

--INT1 (type literal I)
SELECT sct$get_test_value('''110''', 'INT1'); --> 110

--INT1 (type literal II)
SELECT sct$get_test_value('74', 'INT1'); --> 74

--SMALLINT (expression)
SELECT sct$get_test_value('CAST(15156 AS SMALLINT)', 'SMALLINT'); --> 15156

--SMALLINT (type literal I)
SELECT sct$get_test_value('''4256''', 'SMALLINT'); --> 4256

--SMALLINT (type literal II)
SELECT sct$get_test_value('-21564', 'SMALLINT'); --> -21564

--INT2 (expression)
SELECT sct$get_test_value('CAST(5215 AS INT2)', 'INT2'); --> 5215

--INT2 (type literal I)
SELECT sct$get_test_value('''19348''', 'INT2'); --> 19348

--INT2 (type literal II)
SELECT sct$get_test_value('-13875', 'INT2'); --> -13875

--INTEGER (expression)
SELECT sct$get_test_value('CAST(2042483647 + 245 AS INTEGER)', 'INTEGER'); --> 2042483892

--INTEGER (type literal I)
SELECT sct$get_test_value('''1147483647''', 'INTEGER'); --> 1147483647

--INTEGER (type literal II)
SELECT sct$get_test_value('63254714', 'INTEGER'); --> 63254714

--INT (expression)
SELECT sct$get_test_value('CAST(23549225 AS INT)', 'INT'); --> 23549225

--INT (type literal I)
SELECT sct$get_test_value('''575891285''', 'INT'); --> 575891285

--INT (type literal II)
SELECT sct$get_test_value('-8125196', 'INT'); --> -8125196

--INT4 (expression)
SELECT sct$get_test_value('CAST(2956296 AS INT4)', 'INT4'); --> 2956296

--INT4 (type literal I)
SELECT sct$get_test_value('''-521566136''', 'INT4'); --> -521566136

--INT4 (type literal II)
SELECT sct$get_test_value('8251512', 'INT4'); --> 8251512

--BIGINT (expression)
SELECT sct$get_test_value('CAST(2152198479271501863 AS BIGINT)', 'BIGINT'); --> 2152198479271501863

--BIGINT (type literal I)
SELECT sct$get_test_value('''8723561876598635815''', 'BIGINT'); --> 8723561876598635815

--BIGINT (type literal II)
SELECT sct$get_test_value('-9223372036854775808', 'BIGINT'); --> -9223372036854775808

--INT8 (expression)
SELECT sct$get_test_value('CAST(-33453489567293746 AS INT8)', 'INT8'); --> -33453489567293746

--INT8 (type literal I)
SELECT sct$get_test_value('''8927591501257205153''', 'INT8'); --> 8927591501257205153

--INT8 (type literal II)
SELECT sct$get_test_value('-12451979813246532', 'INT8'); --> -12451979813246532

--VARBINARY (expression)
CALL sct$get_test_value('hex_to_binary(''0BDF02998968884239D00198'')', 'VARBINARY(12)'); --> '0BDF02998968884239D00198'

--VARBINARY (type literal I)
CALL sct$get_test_value('x''''', 'VARBINARY(0)'); --> ''

--VARBINARY (type literal II)
CALL sct$get_test_value('x''A8409FE548D04DE240DF''', 'VARBINARY(10)'); --> 'A8409FE548D04DE240DF'

--VARBINARY (type literal III)
CALL sct$get_test_value('''7E22A3DF0023002221006837''', 'VARBINARY(12)'); --> '7E22A3DF00230022210068'

--VARBINARY (type literal IV)
CALL sct$get_test_value('0030A0E30020A0E30210A0', 'VARBINARY(11)'); --> '0030A0E30020A0E30210A0'

--BINARY VARYING (expression)
CALL sct$get_test_value('hex_to_binary(''0BDF02998968884239D00198'')', 'BINARY VARYING(12)'); --> '0BDF02998968884239D00198'

--BINARY VARYING (type literal I)
CALL sct$get_test_value('x''''', 'BINARY VARYING(0)'); --> ''

--BINARY VARYING (type literal II)
CALL sct$get_test_value('x''A8409FE548D04DE240DF''', 'BINARY VARYING(10)'); --> 'A8409FE548D04DE240DF'

--BINARY VARYING (type literal III)
CALL sct$get_test_value('''7E22A3DF0023002221006837''', 'BINARY VARYING(12)'); --> '7E22A3DF00230022210068'

--BINARY VARYING (type literal IV)
CALL sct$get_test_value('0030A0E30020A0E30210A0', 'BINARY VARYING(11)'); --> '0030A0E30020A0E30210A0'

--ST_GEOMETRY (expression)
CALL sct$get_test_value('hex_to_geometry(''0BDF02998968884239D00198'')', 'ST_GEOMETRY(12)'); --> '0BDF02998968884239D00198'

--ST_GEOMETRY (type literal I)
CALL sct$get_test_value('x''''', 'ST_GEOMETRY(0)'); --> ''

--ST_GEOMETRY (type literal II)
CALL sct$get_test_value('x''A8409FE548D04DE240DF''', 'ST_GEOMETRY(10)'); --> 'A8409FE548D04DE240DF'

--ST_GEOMETRY (type literal III)
CALL sct$get_test_value('''7E22A3DF0023002221006837''', 'ST_GEOMETRY(12)'); --> '7E22A3DF00230022210068'

--ST_GEOMETRY (type literal IV)
CALL sct$get_test_value('0030A0E30020A0E30210A0', 'ST_GEOMETRY(11)'); --> '0030A0E30020A0E30210A0'