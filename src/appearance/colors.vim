let s:Day_Theme = "Tomorrow" 
let s:Night_Theme = "Monokai" 

function! Colors_TimeSwither() 
    let l:Time_Morning = 06
    let l:Time_Evening = 18
    let l:Start_Time = str2nr(system("date +%k"))
    if (Start_Time >= Time_Morning && Start_Time < Time_Evening)
        colorscheme Tomorrow
    else
        colorscheme Monokai 
    endif 
endfunction

function! Colors_Switcher()
    if (g:colors_name == s:Night_Theme)
        colorscheme Tomorrow
    else
        colorscheme Monokai  
    endif
endfunction

function! Colors()
    call Colors_TimeSwither()
    map <F12> :call Colors_Switcher()<CR>
endfunction

call Colors()
