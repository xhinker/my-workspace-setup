# after install, remember to exit and reconnect to the terminal to start configuring p10k
sudo apt install zsh
source ~/.zshrc
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install font for p10k
sudo apt-get install fonts-powerline
# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's;ZSH_THEME="robbyrussell";ZSH_THEME="powerlevel10k/powerlevel10k";g' ~/.zshrc
source ~/.zshrc
# install auto suggestion plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
# install highlight plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i 's;plugins=(git);plugins=(git zsh-autosuggestions zsh-syntax-highlighting);g' ~/.zshrc
source ~/.zshrc
