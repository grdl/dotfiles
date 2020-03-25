.PHONY: install dotfiles

install:
	ansible-playbook site.yml -K

dotfiles:
	ansible-playbook site.yml --tags dotfiles
