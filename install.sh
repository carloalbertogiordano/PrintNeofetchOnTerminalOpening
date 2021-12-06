bash="/usr/bin/bash"
zsh="/usr/bin/zsh"

sudo cp $PWD/PrintNeofetchOnShell.sh /usr/bin/PrintNeofetchOnShell.sh
sudo chmod 667 /usr/bin/PrintNeofetchOnShell.sh

mkdir oldBashZshBackup
cp ~/.bashrc oldBashZshBackup
cp ~/.zshrc oldBashZshBackup

if [[ "$SHELL" == "$bash" ]]; then
  echo "/usr/bin/PrintNeofetchOnShell.sh" >> ~/.bashrc
fi

if [[ "$SHELL" == "$zsh" ]]; then
  echo "/usr/bin/PrintNeofetchOnShell.sh" >> ~/.zshrc
fi
