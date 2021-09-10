+++
title = "Day 16：自動補全！coc.nvim"
date = "2021-09-16"
tags = [
  "cli",
  "terminal",
  "software development",
  "vim",
  "tmux",
  "zsh"
]
categories = [ "ithelp", "pure-CLI-IDE" ]
+++

一個好的自動補全工具可以讓你工作效率翻倍，你不用再去查文件了，自動補全不僅可以告訴你這裡有什麼函數可以用，還會告訴你參數的型態、函數功能的說明，可以說是把文件都寫在 vim 裡面了。  
以前我用的自動補全是 [You Complete Me(YCM)](https://github.com/ycm-core/YouCompleteMe)，現在我選擇使用 [coc.nvim](https://github.com/neoclide/coc.nvim) 原因是他提供更多的補全來源、外掛和設定，而且可以用 nodejs 自製外掛，據說所有純 JS 寫的 VS code 外掛都可以裝（這個我沒實驗過，只是傳聞）。關於這兩個自動補全外掛的比較礙於篇幅請自行 Google。

# 安裝
coc.nvim 和一般的 vim 外掛一樣，都是用 vim-plug 安裝就可以了，在 `~/.config/nvim/plugin.vim` 中新增以下設定  

```vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
so ~/.config/nvim/coc-config.vim
```

因為 coc 有很多設定，為了避免檔案太雜亂我把 coc 相關的設定移到另一個檔案，就像我們在 [前天](http://localhost:1313/posts/ithelp/pure-cli-ide/day14/#%E5%88%87%E5%88%86-vimrc)  做得一樣  
接下來建立 `~/.config/nvim/coc-config.vim`，不然等等載入設定檔 vim 會報錯  

```vim
:!touch ~/.config/nvim/coc-config.vim
```

> `:! {cmd}`  可以執行外部命令

接下來存檔安裝  

```vim
:w | PlugInstall
```

跑完後，重開 vim，coc 就裝好了  

# lsp 語言伺服器協定
在講 coc 之前必須先講 Language Server Protocol，簡稱 lsp，中文是「語言伺服器協定」。lsp 做的事是提供自動補全和 go to def，能做到這兩個功能的原因是因為 lsp 懂程式碼，他知道你寫的每個字代表什麼。為什麼 lsp 這麼強呢？因為 lsp 什麼都不懂，他把所有事情丟給 language server 處理，所以只要你有裝 language server，那麼 lsp 什麼語言都懂。  
這麼神奇的 lsp 就是大名鼎鼎的 vs code 提出的（難怪是最多人用的編輯器），我們深耕 45 年的 vim 當然要跟上，所以 coc.nvim 出現了，他是一個 vim 的 language client，而重點是非常好用！

# 安裝 coc 擴充
剛剛說了 coc 的主要功能是把所有事情丟給別人做，那麼這個「人」設定聽起來就很麻煩，所以 coc 有個好主意，用擴充（ extension ）解決！你只要裝好擴充差不多就設定好 lsp 了  
coc.nvim 的自動補全選字來源除了目前所有的 buffer（開啟的檔案）之外，還有 coc 擴充。  
coc 擴充安裝很簡單，在 vim 裡面下指令 `:CocInstall {extension}`，那麼這個擴充的名字該去哪裡找呢？一個是 [coc.nvim 的 GitHub Wiki](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions)，另一個是去 [npm](https://npmjs.org) 搜尋 `coc`，稍微過濾一下大部分都是 coc.nvim 的擴充。  

剛剛講的安裝方法
