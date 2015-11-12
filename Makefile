download:
	mkdir -p othm
	git clone https://github.com/OTHM-ORG/othm-base othm/othm-base
	git clone https://github.com/OTHM-ORG/othm-hashmap othm/othm-hashmap
	git clone https://github.com/OTHM-ORG/othm-symbols othm/othm-symbols
	git clone https://github.com/OTHM-ORG/othm-tag othm/othm-tag
	git clone https://github.com/OTHM-ORG/othm-thread othm/othm-thread
build:
	cd othm/othm-base && make
	cd othm/othm-hashmap && make
	cd othm/othm-symbols && make
	cd othm/othm-tag && make
	cd othm/othm-thread && make
install:
	for dir in othm/*; do (cd "$$dir" && sudo make install); done

