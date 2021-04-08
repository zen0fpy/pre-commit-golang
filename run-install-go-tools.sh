#!/usr/bin/env sh

go get -u golang.org/x/lint/golint

# 用来检查函数的复杂度
# 命令列出了所有复杂度大于12的函数
# gocyclo -over 12 $(ls -d */ | grep -v vendor)
# gocyclo -top 10 $(ls -d */ | grep -v vendor)
go get -u github.com/fzipp/gocyclo


# interface 这个工具提供接口类型的建议，换句话说，它会对可以本没有必要定义成具体的类型的代码提出警告
go get -u github.com/mvdan/interfacer/cmd/interfacer

# deadcode会告诉你哪些代码片段根本没用
go get -u github.com/tsenart/deadcode

# gotype会对go文件和包进行语义(semantic)和句法(syntactic)的分析,这是google提供的一个工具。
go get -u golang.org/x/tools/cmd/gotype

# misspell用来拼写检查，对国内英语不太熟练的同学很有帮助
go get -u github.com/client9/misspell

# go-tools 这个项目提供了非常好的工具， 还包括 structlayout-optimize、unused、rdeps、keyify, gosimple, staticcheck
go get -u github.com/dominikh/go-tools

# goconst 会查找重复的字符串，这些字符串可以抽取成常量。
go get -u github.com/jgautheron/goconst/cmd/goconst

