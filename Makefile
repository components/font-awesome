default: data
	@mkdir -p css font
	@cd $< && git pull
	@cp -f $</css/* ./css
	@cp -f $</font/* ./font
	@du -bh css* font*

data:
	@git clone https://github.com/FortAwesome/Font-Awesome.git $@

.PHONY: default
