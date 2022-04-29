if g:dein#_cache_version !=# 410 || g:dein#_init_runtimepath !=# '/home/tk/.config/nvim/dein/home/tk/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/home/tk/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/tk/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/tmp/.mount_nvim.aktPZVS/usr/share/nvim/runtime,/tmp/.mount_nvim.aktPZVS/usr/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/tk/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/tk/.config/nvim/after' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/home/tk/.config/nvim/init.vim', '/home/tk/.config/nvim/toml/dein.toml', '/home/tk/.config/nvim/toml/dein_lazy.toml'])
if empty(s:plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#_ftplugin = s:ftplugin
let g:dein#_base_path = '/home/tk/.config/nvim/dein'
let g:dein#_runtime_path = '/home/tk/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/tk/.config/nvim/dein/.cache/init.vim'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/home/tk/.config/nvim/dein/home/tk/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/home/tk/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/tk/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/tk/.config/nvim/dein/.cache/init.vim/.dein,/tmp/.mount_nvim.aktPZVS/usr/share/nvim/runtime,/home/tk/.config/nvim/dein/.cache/init.vim/.dein/after,/tmp/.mount_nvim.aktPZVS/usr/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/tk/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/tk/.config/nvim/after'
filetype off
