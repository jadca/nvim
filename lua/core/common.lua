
vim.cmd([[
packadd! vimspector
syntax on
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
nnoremap <leader>y :let @+=expand('%:t')<CR>
nnoremap <leader>e :!start explorer %:p:h<CR>
nnoremap gp `[v`]
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir="C:\\Users\\MSI\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimspector"
nnoremap <leader>aa :!start cmd /C  "cd /d E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Api && dotnet watch" <CR>
nnoremap <leader>jj :!start cmd /C  "cd /d E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Job && dotnet watch"  <CR>
nnoremap <leader>mm :!start cmd /C  "cd E:\Minedu\CargaMasiva\2.Codigo\rrhh-negocio-comunes-cargamasiva-backend && dotnet watch" <CR>
nnoremap <leader>aw :!start cmd /C "cd /d  E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web & ng serve"<CR>
nnoremap <leader>bt :!start cmd /C "cd /d  E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web & node --max_old_space_size=8048 ./node_modules/@angular/cli/bin/ng build --prod --configuration=testing"<CR>
nnoremap <leader>bd :!start cmd /C "cd /d  E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web & node --max_old_space_size=10144 ./node_modules/@angular/cli/bin/ng build --prod --configuration=production"<CR>
nnoremap <Leader>v :e ~/AppData/Local/nvim/init.lua<CR>
"nnoremap <Leader>v :e ~/AppData/Local/nvim/init.vim <CR>
vmap <leader>y "*y
nmap <leader>p "*p
vmap < <gv
vmap > >gv
nmap ,e :Ex<cr>
nmap ,m1 :Ex E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Api<cr>
nmap ,m2 :Ex E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Application<cr>
nmap ,m3 :Ex E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Domain<cr>
nmap ,m4 :Ex E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Infraestructure<cr>
nmap ,m5 :Ex E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Job<cr>
nmap ,mw :Ex E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web\src\app\main\apps\procesos<cr>
nmap ,mwr :Ex E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web\src\app\main\apps\procesos\contratacion\renovacion<cr>
nmap ,mwp :Ex E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web\src\app\main\apps\procesos\contratacion\prepublicacion30328<cr>
nmap ,mb :!start E:\Minedu\Ayni\Api\2.Codigo\PersonalProcesoContratacion.sln<cr>
nmap ,mf :!"C:\Program Files\Microsoft Visual Studio\2022\Preview\Common7\IDE\devenv.exe" "E:\Minedu\Ayni\Front\2.Codigo\rrhh-personal-web"<cr>
nnoremap ,ma :!start explorer E:\Minedu\Ayni<CR>
nnoremap ,ml :!start explorer C:\logs\apps\Minedu.ProcesoContratacion.Api<CR>
nnoremap ,mc :tabnew +/42986128 C:\Users\MSI\Desktop\userMinedu.txt<CR>

nmap ,ru :let @+ = "sigsda11@minedu.gob.pe"<cr><esc>
nmap ,rc :let @+ = "S40502754*"<cr><esc>
nmap ,vu :let @+ = "sigsda10"<cr><esc>
nmap ,vc :let @+ = "Minedu2024@@"<cr><esc>
nmap ,bc :let @+ = "http://localhost:4200/ayni/personal/procesospersonal/procesos/contratacion/consolidado/356"<cr><esc>
nmap ,wo :!start https://mineduperu.sharepoint.com/:x:/s/sisda/EfmoarPoP_JAk_wgTJr9DOwBjNos5rlkgfttgn6Fjs7CJw?e=AL3ySR <cr><esc>

nmap ,bs :set signcolumn=yes:1<cr><esc>
nmap ,bh :set signcolumn=no<cr><esc>
nmap ,cl :%s/\s\+$//e<cr><esc>

nmap ,l :noh<cr>
nmap ,y  viwy<esc>
nmap ,xx viwyA<SPACE><esc>pbxvgui_<esc>A;<esc>
nmap ,h  vi"y<esc>
nmap ,p  viw"0p<esc>
nmap ,a ea
nmap ,b bi
nmap ,9 f(l
nmap ,9v f(vi(
nmap ,, f<l
nmap ,,v f<vi<
nmap <leader>< 10<c-w><
nmap <leader>> 10<c-w>>
nmap <leader>( vi(
nmap <leader>" vi"
nmap <leader>{ vi{
nmap <leader>w :w!<cr>
nmap <leader>' I//<esc>
nmap <leader>t ggVGy
nmap <leader>ch :lcd %:p:h<cr>
nmap <leader>b1 :!dotnet build E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Api<cr>
nmap <leader>b2 :!dotnet build E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Application<cr>
nmap <leader>b3 :!dotnet build E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Domain<cr>
nmap <leader>b4 :!dotnet build E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Infraestructure<cr>
nmap <leader>b5 :!dotnet build E:\Minedu\Ayni\Api\2.Codigo\Minedu.ProcesoContratacion.Job<cr>
"nmap <leader>bs :!dotnet build H:\Sunedu\LINU\DEV\src\Solicitud\Solicitud.Api\Gnosis.Ms.Solicitud.Api.csproj<cr>
"nmap <leader>bo :!dotnet build H:\Sunedu\LINU\DEV\src\Orquestador\Orquestador.Api\Gnosis.Ms.Orquestador.Api.csproj<cr>
"nmap <leader>bod :!docker-compose -f H:\Sunedu\LINU\DEV\src\Orquestador\docker-compose.yml up --build -d<cr>
"nmap <leader>bf :!dotnet build H:\Sunedu\LINU\DEV\src\Formatos\Formatos.Api\Gnosis.Ms.Formatos.Api.csproj<cr>
"nmap <leader>bfd :!docker-compose -f H:\Sunedu\LINU\DEV\src\Formatos\docker-compose.yml up --build -d<cr>
"nmap <leader>bu :!dotnet build H:\Sunedu\LINU\DEV\src\Flujo\Flujo.Api\Gnosis.Ms.Flujo.Api.csproj<cr>
"nmap <leader>bw :!docker-compose -f H:\Sunedu\LINU\DEV\src\Web\docker-compose-nginx-local.yml up --build -d<cr>
"nmap <leader>bwi :!docker-compose -f H:\Sunedu\LINU\DEV-1\src\Web\docker-compose-nginx-local.yml up --build -d<cr>
"nmap <leader>bk :!dotnet build H:\Sunedu\LINU\DEV\src\Workers\General\Worker\Gnosis.Worker.General.csproj<cr>
"nmap <leader>bkd :!docker-compose -f H:\Sunedu\LINU\DEV\src\Workers\General\docker-compose.yml up --build -d<cr>
"nmap <leader>bp :!dotnet build H:\Sunedu\LINU\DEV\src\Presentacion\Presentacion.Api\Gnosis.Ms.Presentacion.Api.csproj<cr>
"nmap <leader>bpd :!docker-compose -f H:\Sunedu\LINU\DEV\src\Presentacion\docker-compose.yml -f H:\Sunedu\LINU\DEV\src\Presentacion\docker-compose.override.yml up --build -d<cr>
"nmap <leader>bd :!dotnet build H:\Sunedu\LINU\DEV\src\Documentos\Documentos.Api\Gnosis.Ms.Documentos.Api.csproj<cr>
"nmap <leader>ro <plug>(lsp-definition)<cr> nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
"inoremap ;g <++>
"inoremap ~q ""<++><Esc>?"<CR>i
inoremap \= <SPACE>=<SPACE>;<esc>i
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  set cursorline relativenumber number
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

set relativenumber
set completeopt=menu,menuone,noselect
set mouse=
set mousemodel=extend
set noswapfile
nnoremap gob  :s/\((\zs\\|,\ *\zs\\|)\)/\r&/g<CR><Bar>:'[,']normal ==<CR><Bar>:noh<CR>
"https://vim.fandom.com/wiki/Add_a_newline_after_given_patterns
let g:gradle_path = 'E:\Android\01\gradle' 
let g:android_sdk_path = 'C://Users/MSI/AppData/Local/Android/Sdk'
let g:android_aapt_tool= 'C:\Users\MSI\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt2.exe'
set signcolumn=no
set nowrap
]])

