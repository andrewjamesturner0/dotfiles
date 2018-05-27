M4 = m4
PREFIX = --prefix-builtins
RM = rm
OUTDIR = GENERATED
HOME = /home/ajt
DOTDIR = $(HOME)/Dev/dotfiles

# Dependencies
# specific computers
galibier: $(OUTDIR) $(OUTDIR)/galibier.bashrc $(OUTDIR)/galibier.vimrc $(OUTDIR)/galibier.conkyrc tmuxconf

tourmalet: $(OUTDIR) $(OUTDIR)/tourmalet.bashrc $(OUTDIR)/tourmalet.vimrc tmuxconf

work: $(OUTDIR) $(OUTDIR)/work.bashrc $(OUTDIR)/work.vimrc $(OUTDIR)/work.conkyrc tmuxconf

# generic
arch: $(OUTDIR) $(OUTDIR)/arch.bashrc $(OUTDIR)/arch.vimrc tmuxconf

ubuntu: $(OUTDIR) $(OUTDIR)/ubuntu.bashrc $(OUTDIR)/ubuntu.vimrc tmuxconf

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


.PHONY: clean
clean:
	$(RM) -r $(OUTDIR)
