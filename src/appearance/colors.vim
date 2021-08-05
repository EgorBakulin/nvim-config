let s:TimeSwitcherEnabled = 1
let s:SwitcherEnabled = 1
let s:switcherKey = "<F12>"
let s:Day_Theme = "Tomorrow" 
let s:Night_Theme = "Monokai" 

function! Colors_TimeSwither() 
    let l:Time_Morning = 06
    let l:Time_Evening = 18
    let l:Start_Time = str2nr(system("date +%k"))
    if (Start_Time >= Time_Morning && Start_Time < Time_Evening)
        execute "colorscheme " . s:Day_Theme
    else
        execute "colorscheme " . s:Night_Theme
    endif 
endfunction

function! Colors_Switcher()
    if (g:colors_name == s:Night_Theme)
        execute "colorscheme " . s:Day_Theme
    else
        execute "colorscheme " . s:Night_Theme
    endif 
endfunction

function! Colors()
    if(s:TimeSwitcherEnabled)
        call Colors_TimeSwither()
    endif
    if(s:SwitcherEnabled)
        execute "map " . s:switcherKey . " :call Colors_Switcher()<CR>"
    endif
endfunction

call Colors()
