-- In ~/.config/nvim/lua/plugins/mini.snippets.lua
return {
  {
    "echasnovski/mini.snippets",
    opts = function(_, opts)
      local gen_loader = require("mini.snippets").gen_loader

      -- Configure language patterns to make TypeScript inherit JavaScript snippets
      local lang_patterns = {
        -- TypeScript should load both TypeScript and JavaScript snippets
        typescript = {
          "typescript/**/*.json",
          "**/typescript.json",
          "javascript/**/*.json", -- Add JavaScript patterns
          "**/javascript.json", -- Add JavaScript patterns
        },
        typescriptreact = {
          "typescriptreact/**/*.json",
          "**/typescriptreact.json",
          "typescript/**/*.json",
          "**/typescript.json",
          "javascript/**/*.json", -- Add JavaScript patterns
          "**/javascript.json", -- Add JavaScript patterns
        },
      }

      opts.snippets = {
        gen_loader.from_lang({ lang_patterns = lang_patterns }),
      }
    end,
  },
}
