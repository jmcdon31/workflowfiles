CURDIR=`/bin/pwd`
BASEDIR=$(dirname $0)
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
rm ~/.tmux.conf; 
rm ~/.zshrc;
rm ~/.vimrc;
ln -s $ABSDIR/.tmux.conf ~/.tmux.conf; 
ln -s $ABSDIR/.zshrc ~/.zshrc;
ln -s $ABSDIR/.vimrc ~/.vimrc;
