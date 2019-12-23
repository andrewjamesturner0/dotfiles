M4 = m4
PREFIX = --prefix-builtins
RM = rm
OUTDIR = GENERATED
HOME = /home/ajt
DOTDIR = $(HOME)/Dev/dotfiles

# Dependencies
# specific computers
gavia: $(OUTDIR) $(OUTDIR)/gavia.bashrc $(OUTDIR)/gavia.vimrc $(OUTDIR)/gavia.conkyrc tmuxconf gitconf

tourmalet: $(OUTDIR) $(OUTDIR)/tourmalet.bashrc $(OUTDIR)/tourmalet.vimrc tmuxconf gitconf

work: $(OUTDIR) $(OUTDIR)/work.bashrc $(OUTDIR)/work.vimrc $(OUTDIR)/work.conkyrc tmuxconf gitconf

# generic
arch: $(OUTDIR) $(OUTDIR)/arch.bashrc $(OUTDIR)/arch.vimrc tmuxconf gitconf

ubuntu: $(OUTDIR) $(OUTDIR)/ubuntu.bashrc $(OUTDIR)/ubuntu.vimrc tmuxconf gitconf

# Rules
$(OUTDIR):
	if [ ! -d $(OUTDIR) ]; then mkdir $(OUTDIR); fi

$(OUTDIR)/%.bashrc: bash/%.m4 bash/common bash/common.linux bash/archlinux.generic bash/ubuntu.generic
	$(M4) $(PREFIX) $< > $@
	ln -sf $(DOTDIR)/$@ $(HOME)/.bashrc

$(OUTDIR)/%.vimrc: vim/%.m4 vim/common
	$(M4) $(PREFIX) $< > $@
	ln -sf $(DOTDIR)/$@ $(HOME)/.vimrc

$(OUTDIR)/%.conkyrc: conky/%.m4 conky/common
	$(M4) $(PREFIX) $< > $@
	ln -sf $(DOTDIR)/$@ $(HOME)/.conkyrc

tmuxconf: tmux.conf
	ln -sf $(DOTDIR)/$< $(HOME)/.$<

gitconf: gitconfig
	ln -sf $(DOTDIR)/$< $(HOME)/.$<


.PHONY: clean
clean:
	$(RM) -r $(OUTDIR)
