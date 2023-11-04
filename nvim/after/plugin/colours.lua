function ColourMyPencils(colour)
	colour = colour or "nord"
	vim.cmd.colorscheme(colour)

end

ColourMyPencils()
