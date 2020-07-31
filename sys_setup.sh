#install docker
	sudo apt-get update && \

	sudo apt-get install \
    	apt-transport-https \
    	ca-certificates \
    	curl \
    	gnupg-agent \
    	software-properties-common && \

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

	sudo apt-get install docker-ce docker-ce-cli containerd.io  && \


#Download Docker Images
	
 	sudo docker image build 	https://github.com/jmcdon31/Dockerfiles.git#master:devenv \
 					--build-arg USER_ID=$(id -u ${USER}) \
 					--build-arg GROUP_ID=$(id -g ${USER}) \
 					--build-arg USER_NAME=${USERNAME} \
 					-t devenv && \

#Setup Aliases
	echo 'devenva() { 
		if [ -z  "$1" ]; then  tmp=devenv; else tmp=$1; fi

	sudo docker run --rm -it \
				-e DISPLAY \
				-e TERM	\
				-v $PWD:${PWD##*/}\
				-v /tmp/.X11-unix:/tmp/.X11-unix \
				--user=$(id -u $USER):$(id -g $USER) \
				$tmp; }' >> ~/.bash_aliases && \
	echo  'alias edit='devenva''>> ~/.bash_aliases && \

#install gnome tweak tool
	sudo apt-get install gnome-tweak-tool
	
	#####MANUALLY set caps to ctrl#####

	

	
	
