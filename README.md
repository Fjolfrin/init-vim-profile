# init-vim-profile
My neovim init.vim profile

This is my init.vim file, which configures the plugins and settings I have placed on my neovim installation.
All plugins and settings have been found from YouTube videos and various articles, and are tailored to my use as a Python user for ML.

I am on **Widnows 11**, and I use **Windows Terminal** for my neovim coding. I have tried the same stuff on WSL (Windows uUbsystem for Linux) and everything works fine.
Also I have been using **scoop** as my package manager on Windows. Everything, including Python, is installed through scoop.

Below are links for:
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=el-gr&gl=gr)
- [Scoop](https://scoop.sh/)
- [Neovim GitHub page](https://github.com/neovim/neovim)
- [vim-plug GitHub page](https://github.com/junegunn/vim-plug)

Install `neovim` and` vim-plug` (vim plug-in manager) using:
```
scoop install neovim
scoop install vim-plug
```

If not already existing, create a directory on your "~/AppData/Local" path for nvim, along with a "plugged" folder.
```
cd ~/AppData/Local
mkdir nvim
cd nvim
mkdir plugged
```

Then copy the `init.vim` file from this repository to the `nvim` folder.
Open the `init.vim` file:
```
nvim init.vim
```
and type `:PlugInstall`, which will install all listed plugins. Then reopen nvim or type `:so %` inside nvim.

The `coc.nvim` plugin which is responsible for auto-complete functionality may give you some problems, but it is fairly easy to configure. Here is a [link to its GitHub page](https://github.com/neoclide/coc.nvim), and a link to [a YouTube video that helped me a lot](https://youtu.be/JWReY93Vl6g?t=1123). You can actually configure coc for any language you want with the corresponding coc plugin.
