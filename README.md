vimconfig
=========

my vim config
terrrible, not everything is workin but it is a start, thanks to http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/
for showing me the way

cd $HOME

git clone git://github.com/bmx0r/vimconfig.git .vim



ln -s $HOME/.vim/.vimrc $HOME/.vimrc

cd $HOME/.vim

git submodule init

git submodule update

git submodule foreach git submodule init

git submodule foreach git submodule update

...

pip install pyflakes pep8 flake8 mccabe
open a python file with this config and it F5 for pep8 test

If you are as lazy as me and you like to dev in a VM, install fabric and fabtools(if you use vagrant) and use the fabfile to automate this as : 
fab -f $PATHTO/vimconfig/fabfile.py vagrant deploy_vimconfig
where $PATHTO is the local path where you clone the repo

TODO update the fabfile to handle multi VM in vagrant
