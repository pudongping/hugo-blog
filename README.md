# hugo-blog

使用 [Hugo](https://gohugo.io/) 搭建的一个极简博客项目。（目前只作为教程，自己的博客请移步 `http://pudongping.github.io` 进行查看）

项目在线访问地址为： `https://pudongping.github.io/hugo-blog/`

![首页](https://raw.githubusercontent.com/pudongping/hugo-blog/master/static/screenshot/hugo-homepage.png)

![文章详情页](https://raw.githubusercontent.com/pudongping/hugo-blog/master/static/screenshot/hugo-article-detail.png)

这里我使用的主题是 [m10c](https://themes.gohugo.io/themes/hugo-theme-m10c/)，你也可以使用更多的主题，比如：

![blist](https://github.com/pudongping/hugo-blog/blob/master/static/theme-demo/blist.png?raw=true)

图文并茂类型的

---

![PaperMod](https://github.com/pudongping/hugo-blog/blob/master/static/theme-demo/PaperMod.png?raw=true)

极简类型的

---

![ananke](https://github.com/pudongping/hugo-blog/blob/master/static/theme-demo/ananke.png?raw=true)

传统博客类型的

---

![m10c](https://github.com/pudongping/hugo-blog/blob/master/static/theme-demo/m10c.png?raw=true)

极客风格的

---

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

## 你也想要和我一样的博客？

1. 克隆我的项目仓库

```sh
# github
git clone https://github.com/pudongping/hugo-blog.git ~/hugo-blog

# gitee （要是网速不是很好则可以使用 gitee）
git clone https://gitee.com/pudongping/hugo-blog.git ~/hugo-blog
```

2. 拉取主题子模块

```sh
git submodule update --init --recursive
```

3. 直接启动 Hugo 即可

```sh
cd ~/hugo-blog && hugo server -D
```

这里因为我更改了 `hugo.toml` 配置文件中的访问地址，因此当你在本地启动的时候，你的首页访问地址为 `http://localhost:1313/hugo-blog/`

4. 你的自定义

将项目根目录下的 `hugo.toml` 相关配置改成你自己的即可。  
然后将 `content/posts` 目录下我的所有文章删除，添加你自己的文章即可。

就这几步，就完了。恭喜你，又学会了一项新技能！

> 如果对你有帮助，请帮我点一个 `Star` 呗！