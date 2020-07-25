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
	sudo docker build https://github.com/jmcdon31/Dockerfiles.git#master:devenv -t devenv && \

#Setup Aliases
	echo 'devenva(){ sudo docker run --rm -it -v $PWD:/root/${PWD##*/} devenv; }' >> ~/.bash_aliases && \
	echo  'alias edit='devenva''>> ~/.bash_aliases && \

#install gnome tweak tool
	sudo apt-get install gnome-tweak-tool
	
	#####MANUALLY set caps to ctrl#####

	

	
	
