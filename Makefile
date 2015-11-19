all: download build install
download:
	mkdir -p othm
	git clone https://github.com/OTHM-ORG/othm-base othm/othm-base
	git clone https://github.com/OTHM-ORG/othm-hashmap othm/othm-hashmap
	git clone https://github.com/OTHM-ORG/othm-symbols othm/othm-symbols
	git clone https://github.com/OTHM-ORG/othm-tag othm/othm-tag
	git clone https://github.com/OTHM-ORG/othm-thread othm/othm-thread
build:
	for dir in othm/*; do (cd "$$dir" && make); done
update:
	for dir in othm/*; do (cd "$$dir" && git pull); done
install:
	for dir in othm/*; do (cd "$$dir" && sudo make install); done
test:
	for dir in othm/*; do (cd "$$dir" && make test); done
delete:	
	for dir in othm/*; do (rm -rf "$$dir"); done
download-ogst:
	git clone https://github.com/OTHM-ORG/ogst-vm


