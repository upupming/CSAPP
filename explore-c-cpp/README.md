# 第五章家庭作业

**李一鸣	1160300625**

## code

github: [upupming/CSAPP/chapter5](https://github.com/upupming/CSAPP/tree/master/chapter5)

All solutions and lab reports are in Chinese.

## serve locally

clone code

	git clone https://github.com/upupming/CSAPP.git
	cd CSAPP/chapter5

install nodejs

	sudo apt install nodejs nodejs-legacy

install `gitbook-cli`

	npm i -g gitbook-cli

install plugins

	gitbook install

serve

	gitbook serve --no-watch

visit link

	http://localhost:4000

## generate ebook

**prerequisite**

- ebook-convert

		sudo apt install calibre

generate book

	gitbook pdf ./ ./CSAPP-chapter5.pdf
	gitbook mobi ./ ./CSAPP-chapter5.mobi
	gitbook epub ./ ./CSAPP-chapter5.epub


ref: [gitbook toolchain: ebook](https://toolchain.gitbook.com/ebook.html)


