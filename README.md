This is a repository to backup my vim config.
This config was suitable for the Mac OS. But I will list some dependents.

## Before use
If you are Mac OS user you need to install brew package manager first,
   and run the install.sh script.
   if you are linux user, you can install the dependents here:
   ```
   node.js
   vim-plug
   ccls
   ```
## How to use
   I use the vim-plug to manage all the plugins

   Whe you want to use the config, move the folder to the ~/.vim folder to use.

   If you want to update the plugin, you can use the vim command

   ```
   :PlugUpdate
   ```

   If you want to update the vim-plug extension, you can use the vim command

   ```
   :PlugUpgrade
   ```
   Because there are some problems of the coc-ccls extension, so you need to run these command
   after install all the extension.
   ```
   cd ~/.config/coc/extensions/node_modules/coc-ccls
   ln -s node_modules/ws/lib lib
   ```

