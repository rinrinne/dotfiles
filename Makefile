# vim: ts=4:sw=4

DOTFILES_VIM = .vim .vimrc
DOTFILES_EMACS = .emacs.d
DOTFILES_GIT = .gitconfig

all: vim emacs git

vim: $(foreach f, $(DOTFILES_VIM), link-dot-file-$(f))
clean-vim: $(foreach f, $(DOTFILES_VIM), unlink-dot-file-$(f))

emacs: $(foreach f, $(DOTFILES_EMACS), link-dot-file-$(f))
clean-emacs: $(foreach f, $(DOTFILES_EMACS), unlink-dot-file-$(f))

git: $(foreach f, $(DOTFILES_GIT), link-dot-file-$(f))
clean-emacs: $(foreach f, $(DOTFILES_EMACS), unlink-dot-file-$(f))


.PHONY: clean
clean: clean-vim clean-emacs clean-git

link-dot-file-%: %
	@echo  "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<
