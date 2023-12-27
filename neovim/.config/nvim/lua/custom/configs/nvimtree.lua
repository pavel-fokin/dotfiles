local nvimtree = require "nvim-tree"
local options = require("plugins.configs.nvimtree")

options["renderer"]["icons"]["show"]["folder"] = false

nvimtree.setup(options)
