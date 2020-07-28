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


