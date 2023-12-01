---
title: "Hugo Quick Start"
date: 2023-12-01T16:53:48+08:00
draft: false
---

Hugo 快速搭建一个博客系统

Hugo 是由 Go 语言实现的静态网站生成器。简单、易用、高效、易扩展、快速部署。支持 markdown 语法。

- [官网地址](https://gohugo.io/)
- [皮肤地址](https://themes.gohugo.io/)

## 安装 Hugo

直接去 [Hugo Releases](https://github.com/gohugoio/hugo/releases) 页面下载对应系统版本的 Hugo 二进制文件即可。

如果是 Mac OS 系统，那么还可以直接使用 Homebrew 安装

```sh
brew install hugo
```

这里不太推荐使用源码安装，可能对一些新手朋友不太友好。老司机，随便怎样，无所谓。

检查 hugo 是否安装成功

```sh
# 会打印出 hugo 的版本号
hugo version
```

## 创建站点

这里假设在自己的**家目录**创建站点。

> Windows 用户，建议使用 `Git Bash`

```sh
# ～ 表示当前用户的家目录
hugo new site ~/hugo-blog
```

这里有一点需要说明的是，**Hugo 默认是不会提供主题的，需要我们自己去配置一个主题，否则是无法跑起来的。** Hugo 的主题有专门的官方主题网址，不同的主题配置方式也会有所不同，请注意甄别。

这里假设我们只想快速把 Hugo 跑起来，做一下体验。

来吧，安装主题。

```sh
# 切换到我们的项目根目录下
cd ~/hugo-blog

# 初始化仓库地址
git init

# 下载一个主题
git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

# 将主题写入配置文件，使其使用我们下载的主题
echo "theme = 'ananke'" >> hugo.toml

# 启动 Hugo
hugo server
```

然后我们在浏览器中访问 `http://localhost:1313` 即可。

好了，就这么几步，`Hugo` 就已经跑起来了，是不是很简单？

## 写文章

光是 `Hugo` 跑起来还是不行，我们用它主要是来写文章的，那么我们如何写文章呢？请继续往下看。

```sh
# 在项目根目录下执行以下命令，即可在 `content/posts` 目录下，创建 `hello.md` 文件
hugo new content posts/hello.md
```

我们通过编辑器打开 `content/posts/hello.md` 文件，大致会有以下内容：

```md
---
title: "Hello"
date: 2023-12-01T16:13:46+08:00
draft: true
---
```

这里我们注意到了 `draft: true` 表示，默认新建的文章为**草稿**，如果我们使用 `hugo server` 启动 `Hugo` 我们会发现是无法看到我们这篇文章的，解决方式有两种：

第一种，我们将 `draft: true` 更改成 `draft: false`，然后执行 `hugo server`。  
第二种，我们可以直接使用 `hugo server -D` 命令，即可。

```md
---
title: "Hello"
date: 2023-12-01T16:13:46+08:00
draft: false
author: "Alex"
description: "文章描述信息"

tags: [
  "我的博客标签1",
  "我的博客标签2",
]

---

## Introduction

Hello, I'm **Alex** ! A Software Engineer and Backend Developer.

This is my blog website `https://pudongping.github.io` 
```

然后我们在浏览器中访问 `http://localhost:1313` 即可预览到我们写的文章。

## 如何部署

这里我使用的是 `Github Pages` 作为演示。你也可以通过访问 `https://pudongping.github.io/hugo-blog` 来访问我的教程示例。

直接在项目根目录下执行：

```sh
# 不需要添加任何参数
hugo
```

我们即可看到项目根目录下会生成一个 `public` 目录，我们只需要将 `public` 目录下的所有文件推送到 `Github` 仓库中即可。这就涉及到 `Github Pages` 相关的知识了，这里不做过多的讲解，主要还是讲解 `Hugo` 的使用。

**需要注意的是：** 最好每次部署时，先清空 `public` 目录，然后再使用 `hugo` 命令生成。