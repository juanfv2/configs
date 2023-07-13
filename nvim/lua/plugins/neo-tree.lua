return {

  -- change trouble config
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- opts will be merged with the parent spec
    opts = {
      window = {
        position = "right",
        relativenumber = true,
        number = true,
      },
      view = {
        relativenumber = true,
      },
      filesystem = {

        relativenumber = true,
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
        },
      },
    },
  },
}
