+++
title = "Bitbucket Connect Jira"
slug = ""
date = 2022-07-20T17:39:07+08:00
+++

# Bitbucket 連接 Jira
先到 Bitbucket 的 repo 的 Jira issue 頁面
![1](./1.png)
點擊左上方資料夾圖示按鈕，然後點擊「Manage linked projects」
![2](./2.png)
選好 Jira 專案後，按下「Link project」
![3](./3.png)
等載入完成就可以看到 Jira issue 了
![4](./4.png)

# Jira issue 連結 Bitbucket branch
Bitbucket 的 repo 的 Jira issue 頁面，點擊要處理的 Jira issue 最右側的三個點點
![4](./4.png)
選第一個按鈕「Create Brench」
![5](./5.png)
填好 type、name 等等訊息，按下「Create」就建立好並對應了
![6](./6.png)

# 將遠端 Git brench 拉到本地
```sh 
$ git pull 
$ git switch <branch name>
```
