
.PHONY: build-vim
build-vim:
	mkdir -p build/vim/base16-arc-vim/colors
	base16-builder -s arc.yml -t vim -b dark > build/vim/base16-arc-vim/colors/base16-arc-dark.vim  

.PHONY: build-nvim
build-nvim:
	mkdir -p build/nvim/base16-arc-nvim/colors
	base16-builder -s arc.yml -t nvim -b dark > build/nvim/base16-arc-nvim/colors/base16-arc-dark.vim  

.PHONY: build-shell
build-shell:
	mkdir -p build/shell
	base16-builder -s arc.yml -t shell -b dark > build/shell/base16-arc.sh

.PHONY: build
build: build-vim build-nvim build-shell
