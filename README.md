vimconfig
=========

my vim config
terrrible, not everything is workin but it is a start, thanks to http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/
for showing me the way


git clone

mv to your $home/.vim

ln -s $home/.vim/.vimrc $home/.vimrc

cd $home/.vim

git submodule init

git submodule update

git submodule foreach git submodule init

git submodule foreach git submodule update

...


open a python file with this config and it F5 for pep8 test
