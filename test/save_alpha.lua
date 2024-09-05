-- ~/.config/nvim/lua/save_alpha_config.lua

local alpha = require("alpha")
local theta = require("alpha.themes.theta")

-- Get the configuration
local config = theta.config

-- Convert the configuration to a string
local config_str = vim.inspect(config)

-- Define the file path
local file_path = os.getenv("HOME") .. "/alpha_config.lua"

-- Write the configuration to the file
local file = io.open(file_path, "w")
if not file then
	return
end
file:write(config_str)
file:close()

-- Print a message to indicate that the file has been written
print("Configuration saved to " .. file_path)
