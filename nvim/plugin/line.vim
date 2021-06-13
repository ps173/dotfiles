lua << EOF
local gl = require('galaxyline')
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }

--- Color Palette
local colors = {
    bg = '#3b4252',
    yellow = '#ebcb8b',
    darkblue = '#081633',
    green = '#a3be8c',
    orange = '#d08770',
    grey = '#c0c0c0',
    blue = '#0087d7',
    red = '#bf616a',
}


local buffer_not_empty = function()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then return true end
    return false
end

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then return true end
    return false
end

local spacing = function()
    return ' '
end


gl.section.left[1] = {
    StartSpace = {
        provider = spacing,
        highlight = {colors.orange, colors.orange}
    }
}


gl.section.left[2] = {
    ViMode = {
        provider = function()
            local alias = {
                n = 'NORMAL ',
                i = 'INSERT ',
                c = 'COMMAND ',
                v = 'VISUAL ',
                V = 'VISUAL LINE ',
                [''] = 'VISUAL BLOCK '
            }
            return alias[vim.fn.mode()]
        end,
        separator = '   ',
        separator_highlight = {
            colors.orange, function()
                if not buffer_not_empty() then
                    return colors.orange
                end
                return 
            end
        },
        highlight = {colors.darkblue, colors.orange, 'bold'}
    }
}


gl.section.left[3] = {
    FileIcon = {
        provider = 'FileIcon',
        condition = buffer_not_empty,
        highlight = {
            require('galaxyline.provider_fileinfo').get_file_icon_color,
        }
    }
}


gl.section.left[4] = {
    FileName = {
        provider = {'FileName'},
        condition = buffer_not_empty,
        highlight = { colors.red }
    }
}

EOF

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! MyStline()
    let g:currentmode={
           \ 'n'  : 'NORMAL ',
           \ 'v'  : 'VISUAL ',
           \ 'V'  : 'V·Line ',
           \ '' : 'V·Block ',
           \ 'i'  : 'INSERT ',
           \ 'R'  : 'R ',
           \ 'Rv' : 'V·Replace ',
           \ 'c'  : 'Command ',
           \}
    
    set statusline=
    set statusline+=%#Visual#
    set statusline+=\<<\ %{toupper(g:currentmode[mode()])} 
    set statusline+=\>>
    set statusline+=%#DiffChange#
    set statusline+=%{StatuslineGit()}
    set statusline+=\ %f
    set statusline+=%m
    set statusline+=%=
    set statusline+=\ %y
    set statusline+=\ %p%%  
    set statusline+=\   
    set statusline+=%#Visual#
    set statusline+=\ %c
    set statusline+=\ %l/%L
endfunction

