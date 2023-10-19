# Fail on any command.
set -eux pipefail

# Install Powerline for VIM.
sudo apt install -y fonts-powerline
sudo apt install -y python3-pip
pip3 install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc

# Install Patched Font
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/
