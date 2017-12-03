# chapter4 and Archlab

**李一鸣	1160300625**

## code

github: [upupming/CSAPP/chapter4](https://github.com/upupming/CSAPP/tree/master/chapter4)

All soluctions and lab report is in Chinese.

## serve locally

clone code

	git clone https://github.com/upupming/CSAPP.git
	cd CSAPP/chapter4

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

	gitbook pdf ./ ./CSAPP-chapter4.pdf
	gitbook mobi ./ ./CSAPP-chapter4.mobi
	gitbook epub ./ ./CSAPP-chapter4.epub


ref: [gitbook toolchain: ebook](https://toolchain.gitbook.com/ebook.html)


