
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_auto_execute_table_helpers = 1
vim.g.db_ui_force_echo_notifications = 1

vim.g.dbs = {
	{ name = "localhost", url = "mysql://root:toor@localhost:3306/raarchivo_archivo_00" },
	{ name = "dev", url = "postgres://postgres:mypassword@localhost:5432/my-dev-db" },
	{ name = "staging", url = "postgres://postgres:mypassword@localhost:5432/my-staging-db" },
	{ name = "wp", url = "mysql://root@localhost/wp_awesome" },
}

vim.g.db_ui_table_helpers = {
    mysql = {
            Count = "select count(*) from `{table}`",
            List  = "select * from `{table}` order by `id` limit 100",
            DLL = "SHOW CREATE TABLE `{table}`",
            ExportCSV = "SET GLOBAL group_concat_max_len = 100000000; SET @SQL = ( select CONCAT('SELECT * INTO OUTFILE \\'~/Desktop/{table}-', UNIX_TIMESTAMP(), '.csv\\' FIELDS TERMINATED BY \\',\\' OPTIONALLY ENCLOSED BY \\'\"\\' ESCAPED BY \\'\\' LINES TERMINATED BY \\'\\n\\' FROM (SELECT ', GROUP_CONCAT(CONCAT(\"'\",COLUMN_NAME,\"'\")),' UNION select * from {table}) as tmp') from INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}' AND TABLE_SCHEMA = '{dbname}' order BY ORDINAL_POSITION ); PREPARE stmt FROM @SQL; EXECUTE stmt;",
            ExportJSON = "SET @SQL = ( select CONCAT('SELECT JSON_ARRAYAGG(JSON_OBJECT(', GROUP_CONCAT(CONCAT(\"'\", COLUMN_NAME, \"',\", COLUMN_NAME )), ')) INTO OUTFILE \\'~/Desktop/{table}-', UNIX_TIMESTAMP(), '.json\\' from {table}') from INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}' AND TABLE_SCHEMA = '{dbname}' order BY ORDINAL_POSITION); PREPARE stmt FROM @SQL; EXECUTE stmt;"
        }
}
