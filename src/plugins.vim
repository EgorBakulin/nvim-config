let files = glob("~/.config/nvim/plugged/config/*.vim", v:false, v:true)

call plug#begin('~/.config/nvim/plugged/vendor')

for file in files
  execute "source ".file
endfor

call plug#end()
