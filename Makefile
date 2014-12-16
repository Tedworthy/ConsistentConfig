OS_NAME := $(shell uname)
ifeq ($(OS_NAME), Darwin)
	# OS X detected
	BASH_FILE=bash_profile
else
	# Not OS X
	BASH_FILE=bashrc
endif

copy-config: vimrc bashrc gitconfig
	cp vimrc ~/.vimrc
	cp bashrc ~/.$(BASH_FILE)
	cp gitconfig ~/.gitconfig
