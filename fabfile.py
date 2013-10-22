from fabric.api import *
from fabtools.vagrant import vagrant

env.GIT_REPO_URL="git://github.com/bmx0r/vimconfig.git"

@task
def uname():
    run('uname -a')

@task
def deploy_vimconfig ():
    """
    git clone bmx0r/vimconfig from repo in github to $HOME/.vim.
    """
    print('=== CLONE FROM GITHUB ===')
    run("git clone %s %s" % (env.GIT_REPO_URL, ".vim"))
    run("ln -s $HOME/.vim/.vimrc $HOME/.vimrc")
    with cd('$HOME/.vim'):
        run('git submodule init')
        run('git submodule update')
        run('git submodule foreach git submodule init')
        run('git submodule foreach git submodule update')
    sudo('pip install pyflakes pep8 flake8 mccabe')


