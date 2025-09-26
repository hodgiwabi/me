index="$(PWD)/index.html"

tar:
	tar -zcvf .site/site.tgz index.html static

local:
	open file://$(index)

publish: tar
	hut pages publish -d tobyhodges.me .site/site.tgz  
