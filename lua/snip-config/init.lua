if vim.g.snippets ~= "luasnip" then
    return 
end

local ls = require 'luasnip'
local types = require 'luasnip.util.types'

ls.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  update_events = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- Crazy highlights!!
  -- #vid3
  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { " <- Current Choice", "NonTest" } },
      },
    },
  },
}
-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes (introduced in the forthcoming episode 2)
vim.keymap.set("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set('n', '<leader><leader>s', "<cmd>source ~/.config/nvim/lua/snip-config/init.lua<cr>")

-- Important locals
local s = ls.s 
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node
local d = ls.dynamic_node
local c = ls.choice_node
local sn = ls.sn
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local same = function(index) 
    return f(function(arg)
        return arg[1]
    end, {index})
end


ls.add_snippets('all', {
    s('samet', fmt([[example: {}, function: {}]], {i(1), same(1)}))
})


-- Lua snippets
ls.add_snippets('lua', {
    s('req', fmt([[local {} = require "{}"]], {f(function(arg) 
        local parts = vim.split(arg[1][1], '.', true)
        return parts[#parts] or ''
    end, {1}), i(1)})),
    
})

local get_test_result = function(position)
    return d(position, function() return sn(nil, c(1, {t'example', t'hi'})) end, {})
end

ls.add_snippets('rust', {
    s('test', fmt([[
        #[test]
        fn {}(){} {{
            {}
        }}
    ]],
    {
        i(1, 'testname'),
        get_test_result(2),
        i(0)
    }
    ))
})
