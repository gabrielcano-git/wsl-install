# Update
sudo apt update

# Install dependencies
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install ssh -y
sudo apt install git -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install php -y
sudo apt install composer -y
sudo apt install docker -y
sudo apt install docker-compose -y
sudo apt install curl -y
sudo apt install zsh -y

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc

# Set NVM
nvm use 20

# NPM Installs
sudo npm install -g yarn
sudo npm install -g bower
sudo npm install -g gulp
sudo npm install -g pnpm@latest-10

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc
source ~/.zshrc

# Docker Configs
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ZSH Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Remove o Apache2
sudo apt remove apache2
