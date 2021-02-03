This is a repository to backup my vim config.
This config was suitable for the Mac OS. But I will list some dependents.

## Show Time
![](https://i.loli.net/2021/02/01/NVBbvxU1Cy2dskO.png)

## Before use
If you are Mac OS user you need to install brew package manager first,
   and run the install.sh script.
   if you are linux user, you can install the dependents here:
   ```
   node.js
   vim-plug
   pylint
   ```
## How to use
### Plugin
   I use the vim-plug to manage all the plugins

   Whe you want to use the config, move the folder to the ~/.vim folder to use.

   if you want to install the missing plugins, you can just use

   ```
   :PlugInstall
   ```

   This config use the youcompleteme extension, this extension **need to be compiled before use**.
   You can get some information from the official site of it:
   [https://github.com/ycm-core/YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

   Because the default VIM on the Mac OS don't support the python3 extension, so you need to
   install the vim with brew.

   If you want to update the plugin, you can use the vim command

   ```
   :PlugUpdate
   ```

   If you want to update the vim-plug extension, you can use the vim command

   ```
   :PlugUpgrade
   ```
#### Auto Completion

This configure use the coc.nvim to complete the programme. You can config by yourself.

### Theme

   This config has two themes, which are `one dark` and `the gruvbox`.
   If you want to change the theme you can just to search the 'colorscheme <your theme>' in
   vimrc file and change the name of the theme.


