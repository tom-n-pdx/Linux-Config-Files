#
# Makefile to update dot files from this directory
#

all:

install: shell emacs git screen

#
# Shell Configuration
#
shell: ../.cshrc ../.tcshrc ../.aliases

#
# Emacs Config
#
emacs: ../.emacs

#
# Git Config
#
git: ../.gitconfig

#
# Screen
#
screen: ../.screenrc

#
# General Make rule
#
../.%: dot.%
	cp $< $@


