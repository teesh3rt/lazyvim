return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = "markdown",
  cmd = "Obsidian",
  keys = {
    { "<leader>O", "", desc = "+Obsidian" },
    { "<leader>On", "<cmd>Obsidian new", desc = "New Note" },
    { "<leader>Of", "<cmd>Obsidian search", desc = "Find Note" },
    { "<leader>Od", "<cmd>Obsidian today", desc = "Today's Daily Note" },
    { "<leader>Oy", "<cmd>Obsidian yesterday", desc = "Yesterday's Daily Note" },
    { "<leader>Ot", "<cmd>Obsidian tomorrow", desc = "Tomorrow's Daily Note" },
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/notes/",
      },
    },

    note_id_func = function(title)
      if title ~= nil then
        local words = {os.date("%Y%m%d%H%M%S")}
        for word in string.gmatch(title, "[%wא-ת]+") do
          table.insert(words, word:lower())
        end

        if #words > 0 then
          return table.concat(words, "-")
        end
      end

      return tostring(os.date("%Y%m%d%H%M%S"))
    end,
  },
}
