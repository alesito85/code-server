mkdir "$HOME/git"
sudo docker run -d -it --name code-server -p 0.0.0.0:8080:8080 -v "$HOME/git:/home/coder/git"  -v "$HOME/.ssh:/home/coder/.ssh"   -v "$HOME/.local:/home/coder/.local"   -v "$HOME/.config:/home/coder/.config"   -v "$PWD:/home/coder/project"   -u "$(id -u):$(id -g)"   -e "DOCKER_USER=$USER"   codercom/code-server:latest
