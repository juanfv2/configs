local status, flutter_tools = pcall(require, "flutter-tools")

if not status then
	return
end

flutter_tools.setup({
	-- flutter_path = "/Volumes/jfv3_c/Library/flutter", -- <-- this takes priority over the lookup
})
