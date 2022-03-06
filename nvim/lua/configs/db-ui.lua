vim.g.dbs = {
	{ name = "localhost", url = "mysql://root:toor@localhost:3306/raarchivo_archivo_00" },
	{ name = "dev", url = "postgres://postgres:mypassword@localhost:5432/my-dev-db" },
	{ name = "staging", url = "postgres://postgres:mypassword@localhost:5432/my-staging-db" }, 
	{ name = "wp", url = "mysql://root@localhost/wp_awesome" },
}

vim.g.db_ui_auto_execute_table_helpers = 1