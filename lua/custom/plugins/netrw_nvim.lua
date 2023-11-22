return {
	'prichrd/netrw.nvim',
	opts = {
		icons = {
			symlink = '⚡', -- Symlink icon (directory and file)
			directory = '📁', -- Directory icon
			file = '📄', -- File icon
		},
		use_devicons = false, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
		mappings = {},
	}
}
