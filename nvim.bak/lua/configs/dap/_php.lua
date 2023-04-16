return {
	adapters = {
		type = "executable",
		command = "node",
		args = { "/Users/juan/.vscode/extensions/xdebug.php-debug-1.29.0/out/phpDebug.js" },
	},
	configurations = {
		{
			name = "Listen for Xdebug",
			type = "php",
			request = "launch",
			port = 9001,
		},
	},
}
