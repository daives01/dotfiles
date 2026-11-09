return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false, -- main branch doesn't support lazy-loading
    build = ':TSUpdate',
    config = function()
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
      -- Requires the `tree-sitter` CLI (brew install tree-sitter-cli)
      local ts = require 'nvim-treesitter'
      ts.install { 'bash', 'c', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc' }

      -- Ruby uses vim regex highlighting/indent instead of treesitter
      local skip = { ruby = true }

      local function start(buf, lang)
        if vim.api.nvim_buf_is_valid(buf) and pcall(vim.treesitter.start, buf, lang) then
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end

      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('kickstart-treesitter', { clear = true }),
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          if not lang or skip[lang] then
            return
          end
          if vim.list_contains(ts.get_installed(), lang) then
            start(args.buf, lang)
          elseif vim.list_contains(ts.get_available(), lang) then
            -- Auto-install parsers for new languages
            ts.install(lang):await(function()
              start(args.buf, lang)
            end)
          end
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
