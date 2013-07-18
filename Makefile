phq0:
	m4 --prefix-builtins bashrc-phq0.m4 > bashrc
	m4 --prefix-builtins vimrc-phq0.m4 > vimrc

phq2:
	gm4 --prefix-builtins bashrc-phq2.m4 > bashrc
	gm4 --prefix-builtins vimrc-phq2.m4 > vimrc
