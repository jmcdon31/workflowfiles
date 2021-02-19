alias vim='nvim'
alias python='/usr/bin/python3'
devenva() { sudo docker run --rm -it \
				-e DISPLAY \
				-e TERM	\
				-v $PWD:$PWD \
				-v /tmp/.X11-unix:/tmp/.X11-unix \
				--user=$(id -u $USER):$(id -g $USER) \
				devenv; 
}

alias edit=devenva

devenva() { 
   if [ -z  "$1" ]; then  tmp=devenv; else tmp=$1; fi

   winpty docker run --rm -it \
      -e "TERM=xterm-256color" \
      -v /${PWD}:/home/$USERNAME//${PWD##*/}\
      --user=$(id -u $USER):$(id -g $USER) \
      $tmp; }
         alias edit=devenva


         alias max_container='docker run --rm -it \
            -v ${HOME}/.gitconfig:/root/.gitconfig:ro \
            -v ${HOME}/.bashrc:/root/.bashrc:ro \
            -v ${HOME}/.dir_colors:/root/.dir_colors:ro \
            -v ${HOME}/.vimrc:/root/.vimrc:ro \
            -v ${HOME}/.vim:/root/.vim:ro \
            -v ${PWD}:/root/${PWD##*/} \
            -p=2036:2034 \
            --name max_container \
            -w /root/${PWD##*/}  \
            ras_pi    \
            '
alias max_container_bash='docker exec -it max_container /bin/bash'

