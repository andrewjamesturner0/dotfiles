M4 = m4
PREFIX = --prefix-builtins
RM = rm
OUTDIR = GENERATED
HOME = /home/ajt
DOTDIR = $(HOME)/Dev/dotfiles

# Dependencies
# specific computers
phq0: $(OUTDIR) $(OUTDIR)/phq0.bashrc $(OUTDIR)/phq0.vimrc $(OUTDIR)/phq0.conkyrc

phq2: $(OUTDIR) $(OUTDIR)/phq2.bashrc $(OUTDIR)/phq2.vimrc

work: $(OUTDIR) $(OUTDIR)/work.bashrc $(OUTDIR)/work.vimrc $(OUTDIR)/work.conkyrc

handbrake: $(OUTDIR) $(OUTDIR)/handbrake.bashrc $(OUTDIR)/handbrake.vimrc $(OUTDIR)/handbrake.conkyrc

# generic
arch: $(OUTDIR) $(OUTDIR)/arch.bashrc $(OUTDIR)/arch.vimrc

ubuntu: $(OUTDIR) $(OUTDIR)/ubuntu.bashrc $(OUTDIR)/ubuntu.vimrc

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


.PHONY: clean
clean:
	$(RM) -r $(OUTDIR)
