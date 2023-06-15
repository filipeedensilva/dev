local custom_dracula = require'lualine.themes.dracula'

-- Change the background of lualine_c section for normal mode
custom_dracula.normal.a.bg = '#8220b0'
custom_dracula.normal.b.bg = '#2e303e'
custom_dracula.normal.c.bg = '#24283b'

custom_dracula.visual.a.bg = '#187bde'
custom_dracula.visual.b.bg = '#2e303e'
custom_dracula.visual.c.bg = '#24283b'

require('lualine').setup{
	options = {
		theme = 'dracula',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_x = {'filetype'},
	},
	inactive_sections = {
		lualine_x = {'location', 'encoding', 'fileformat'},
	},
}
