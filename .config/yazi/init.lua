require("autosession"):setup()
require("full-border"):setup()
require("git"):setup {
	-- Order of status signs showing in the linemode
	order = 1500,
}

require("recycle-bin"):setup()

require("bunny"):setup({
  hops = {
    { key = "/",          path = "/",                                    },
    { key = "~",          path = "~",              desc = "Home"         },
    { key = "d",          path = "~/dotfiles",              desc = "Dotfiles"         },
    { key = { "m", "d" },          path = "/media/simo/DATA",      desc = "DATA-HDD"      },
    { key = { "m", "s" },          path = "/media/simo/DATA_SSD",      desc = "DATA-SDD"      },
    { key = "c",          path = "~/.config",      desc = "Config files" },
    { key = { "l", "s" }, path = "~/.local/share", desc = "Local share"  },
    { key = { "l", "b" }, path = "~/.local/bin",   desc = "Local bin"    },
    -- key and path attributes are required, desc is optional
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true, -- Enable ephemeral hops, default is true
  tabs = true, -- Enable tab hops, default is true
  notify = false, -- Notify after hopping, default is false
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})
