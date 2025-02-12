
return { 
	"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")

			config.setup({

					-- A list of parser names, or "all" (the listed parsers MUST always be installed)
					ensure_installed = {"lua", "fish", "bash", "cpp", "c", "lua", "vim", "vimdoc", "python", "latex", "fortran"},

					-- Install parsers synchronously (only applied to `ensure_installed`)
					sync_install = true,

					-- Automatically install missing parsers when entering buffer
					-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
					auto_install = true,

					-- List of parsers to ignore installing (or "all")
					ignore_install = { "javascript" },

					---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
					-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

					highlight = {
					enable = true,

					additional_vim_regex_highlighting = false,
					}
})
end

}
