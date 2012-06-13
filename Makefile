# vim: ts=4:sw=4

DOTFILES_VIM = .vim .vimrc

all: vim

vim: $(foreach f, $(DOTFILES_VIM), link-dot-file-$(f))
clean-vim: $(foreach f, $(DOTFILES_VIM), unlink-dot-file-$(f))


.PHONY: clean
clean: clean-vim

link-dot-file-%: %
	@echo  "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<
