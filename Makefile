REF =

default: data
	@mkdir -p css webfonts scss less
	@cd $< && git remote update && git checkout master && ( git branch -D work || true ) && git checkout -b work $(REF)
	@cp -f $</web-fonts-with-css/css/* ./css
	@cp -f $</web-fonts-with-css/webfonts/* ./webfonts
	@cp -f $</web-fonts-with-css/scss/* ./scss
	@cp -f $</web-fonts-with-css/less/* ./less
	@du -bh css* webfonts* scss* less*

data:
	@git clone https://github.com/FortAwesome/Font-Awesome.git $@

.PHONY: default
