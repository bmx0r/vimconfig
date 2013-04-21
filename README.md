vimconfig
=========

my vim config
terrrible, not everything is workin but it is a start, thanks to http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/
for showing me the way

cd $HOME

git clone git://github.com/bmx0r/vimconfig.git .vim



ln -s $HOME/.vim/.vimrc $HOME/.vimrc

cd $home/.vim

git submodule init

git submodule update

git submodule foreach git submodule init

git submodule foreach git submodule update

...

pip install pyflakes pep8 flake8 mccabe
open a python file with this config and it F5 for pep8 test
