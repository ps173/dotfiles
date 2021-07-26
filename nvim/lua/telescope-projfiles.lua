local M = {}

M.project_files = function()
    local opts = {
     winblend = 20;
     prompt_title = false;
     previewer = false;
     layout_config = {
         width = 0.7;
         height = 0.5;
     }
    } -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

return M

