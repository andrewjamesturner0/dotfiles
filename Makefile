M4 = m4
PREFIX = --prefix-builtins
RM = rm
OUTDIR = GENERATED
DOTDIR = $(CURDIR)

# Machine targets
archlinux: $(OUTDIR) $(OUTDIR)/archlinux.bashrc $(OUTDIR)/archlinux.vimrc tmuxconf gitconf

ubuntu: $(OUTDIR) $(OUTDIR)/ubuntu.bashrc $(OUTDIR)/ubuntu.vimrc tmuxconf gitconf

# Rules
$(OUTDIR):
	if [ ! -d $(OUTDIR) ]; then mkdir $(OUTDIR); fi

$(OUTDIR)/%.bashrc: bash/%.m4 bash/common bash/archlinux.generic bash/ubuntu.generic
	$(M4) $(PREFIX) $< > $@
	ln -sf $(DOTDIR)/$@ $(HOME)/.bashrc

$(OUTDIR)/%.vimrc: vim/%.m4 vim/common
	$(M4) $(PREFIX) $< > $@
	ln -sf $(DOTDIR)/$@ $(HOME)/.vimrc

tmuxconf: tmux.conf
	ln -sf $(DOTDIR)/$< $(HOME)/.$<

gitconf: gitconfig
	ln -sf $(DOTDIR)/$< $(HOME)/.$<


.PHONY: clean
clean:
	$(RM) -r $(OUTDIR)
