+++
title = "isolate"
tags = [ "linux", "sandbox" ]
categories = [ "linux" ]
date = "2020-03-09"
+++

我有一個放了很久的計畫，就是自己寫一個 OJ，因為我覺得現在的那個太難用了。
我很快的建立 repo 但是卻完全沒有進展，我寫了一個 shell script 幫忙編譯執行程式之後我就在也沒有動過他了
我沒有繼續動工的原因是我不知道如何隔離使用者提交的程式碼
我想過 docker 可是據說還是不安全
還有 chroot 但是我不知道有沒有比 docker 安全而且設定好麻煩

昨天去考 TOI　入營考（當然沒進）的時候，我終於看到大名鼎鼎的 CMS 了！
出來之後我發現他是用一個叫 isolate 的程式來做沙箱測試
而且這好像是 IOI 自己寫的，應該是蠻安全的（吧？）
今天成功編譯過後把心得寫下來

