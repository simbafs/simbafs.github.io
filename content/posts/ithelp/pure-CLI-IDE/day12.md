+++
title = "Day 12：vim 配色方案"
date = "2021-09-12"
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

俗話說人要衣裝，佛要金裝，我們的 vim 也得要有漂亮的外觀。今天就讓我們來看看如何~~調教~~調整 vim 的外觀吧！

# highlight group
highlight group（以下簡稱 hg ）是 vim 中的一個概念，他會對應到 vim 畫面中的一段區塊，可能是一段程式碼，也可能是底下的 status bar 或是左側的行號。每一個 hg 都可以設定樣式，包括前景色、背景色、反白、加底線等等，你可以用 `:so $VIMRUNTIME/syntax/hitest.vim` 命令查看所有的 hg 名字，他們的樣式也會直接顯示出來。  

# highlight
用 `:highlight` 或是縮寫 `:hi` 可以設定特定 hg 的樣式  

```vimscript
hi hgName arg=value arg=value......
```

hgName 就是你用 `:so $VIMRUNTIME/syntax/hitest.vim` 查出來的名字，而 arg 常見的有前景色 `ctermfg`、背景色 `ctermbg` 和 樣式 `cterm`

## color
`ctermbg` 和 `ctermfg` 後面接的值會根據你的終端機支援的顏色不同而有變化，其中 8 色和 16 色的終端機都可以用 0 ~ 8 / 0 ~ 16 這樣的方式來表示顏色（數字代表的顏色要看終端機設定），vim help 提供了一個對照表可以參考各個數字代表的顏色

```
NR-16   NR-8    COLOR NAME ~
0	    0	    Black
1	    4	    DarkBlue
2	    2	    DarkGreen
3	    6	    DarkCyan
4	    1	    DarkRed
5	    5	    DarkMagenta
6	    3	    Brown, DarkYellow
7	    7	    LightGray, LightGrey, Gray, Grey
8	    0*	    DarkGray, DarkGrey
9	    4*	    Blue, LightBlue
10	    2*	    Green, LightGreen
11	    6*	    Cyan, LightCyan
12	    1*	    Red, LightRed
13	    5*	    Magenta, LightMagenta
14	    3*	    Yellow, LightYellow
15	    7*	    White
```

第一欄是 16 色，第二欄是 8 色，第三欄是顏色名字，你也可以不用數字用顏色名字（不分大小寫）

如果你的終端機支援 256 色（通常現在的終端機都會有），那就更好玩了，因為你可以用這麼多種顏色！

| ![256 color](/images/ithelp/pure-CLI-IDE/day12/256-color.png) |
| :---:                                                         |
| 256 色表（填的時候不用加 `#`）                                |

# cterm
通常文字不會只有顏色，還可以有加粗、底線等等樣式，vim 總共提供了這些樣式  

| 樣式名稱      | 說明                                                                             |
| bold          | 粗體                                                                             |
| underline     | 底線                                                                             |
| undercurl     | 捲捲的底線，如果你的終端機不支援的話會改用底線代替                               |
| reverse       | 反白                                                                             |
| inverse       | 反白                                                                             |
| italic        | 斜體（要字型有支援）                                                             |
| standout      | 翻譯是「突出」，但是我用起來和 `reverse`、`inverse` 效果一樣，有人知道差在哪嗎？ |
| strikethrough | 翻譯是「刪除線」但是我試不出來，也許是字體的關係                                 |
| NONE          | 清除樣式設定                                                                     |



| ![bg and fg color](/images/ithelp/pure-CLI-IDE/day12/bg-and-fg-color.png) |
| :---:                                                                     |
| 前景色和背景色一樣，這樣就看不到字了                                      |
