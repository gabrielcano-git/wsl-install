# Instalação de Dependências no WSL

Este projeto fornece um script para instalar e configurar rapidamente diversas dependências no Windows Subsystem for Linux (WSL) por meio do terminal.

## Pré-requisitos

- Sistema operacional com WSL habilitado.
- Acesso ao terminal com permissões de superusuário.

## Passos de Instalação

1. **Atualizar os pacotes existentes:**
   ```bash
   sudo apt update
   ```

2. **Instalar dependências essenciais:**
   ```bash
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
   ```

3. **Instalar e configurar o NVM (Node Version Manager):**
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
   export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
   [ -s "$NVM_DIR/nvm.sh" ] && \ . "$NVM_DIR/nvm.sh" # This loads nvm
   source ~/.bashrc
   ```

4. **Definir a versão do Node.js via NVM:**
   ```bash
   nvm use 20
   ```

5. **Instalar pacotes globais do NPM:**
   ```bash
   sudo npm install -g yarn
   sudo npm install -g bower
   sudo npm install -g gulp
   sudo npm install -g pnpm@latest-10
   ```

6. **Configurações adicionais do Docker:**
   ```bash
   sudo addgroup --system docker
   sudo adduser $USER docker
   newgrp docker
   sudo snap disable docker
   sudo snap enable docker
   ```

7. **Instalar e configurar o ZSH com Oh My Zsh:**
   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

8. **Adicionar plugins ao ZSH:**
   - **ZSH Syntax Highlighting:**
     ```bash
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
     ```
   - **ZSH Auto Suggestions:**
     ```bash
     git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
     ```

9. **Remover o Apache2 (se necessário):**
   ```bash
   sudo apt remove apache2
   ```

## Observações

- Certifique-se de reiniciar o terminal após a instalação para que todas as configurações e plugins sejam carregados corretamente.
- Alguns comandos requerem permissões de superusuário (sudo).

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir um pull request ou reportar problemas.

---

**Autor:** Gabriel Cano <[gabriel@gabrielcano.com.br](mailto:gabriel@gabrielcano.com.br)> <br />
**Licença:** MIT
