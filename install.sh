#declare where to look for a shell
bash="/bin/bash"
zsh="/usr/bin/zsh"

#copy the script in the /usr/bin folder
sudo cp $PWD/PrintNeofetchOnShell.sh /usr/bin/PrintNeofetchOnShell.sh

#give it the right permissions
sudo chmod 667 /usr/bin/PrintNeofetchOnShell.sh

#create a backup folder to backup old files
mkdir oldBashZshBackup

if [[ "$SHELL" == "$bash" ]]; then
  cp ~/.bashrc oldBashZshBackup #make a backup
  echo "/usr/bin/PrintNeofetchOnShell.sh" >> ~/.bashrc #tell bash to run the script when opened
  source ~/.bashrc #update the bashrc so no reboot is needed
fi

if [[ "$SHELL" == "$zsh" ]]; then
  cp ~/.zshrc oldBashZshBackup #make a backup
  echo "/usr/bin/PrintNeofetchOnShell.sh" >> ~/.zshrc #tell zsh to run the script when opened
  source ~/.zshrc #update the zshrc so no reboot is needed
fi


/usr/bin/PrintNeofetchOnShell.sh
