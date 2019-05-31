#!/bin/bash
# Installs IntelliJ config to user-config.

#CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs"

for i in $HOME/Library/Preferences/IntelliJIdea*  \
         $HOME/Library/Preferences/IdeaIC*        \
         $HOME/.IntelliJIdea*/config              \
         $HOME/.IdeaIC*/config                    
do
  if [[ -d $i ]]; then
    # codestyles
    echo "Installing code styles..."
    mkdir -p $i/codestyles
    cp -frv "codestyles"/* $i/codestyles

    # inspections
    echo "Installing inspections..."
    mkdir -p $i/inspection
    cp -frv "inspection"/* $i/inspection
  fi
done

echo "Done."
echo ""
echo "Restart IntelliJ; Preferences > Editor > Codestyle and apply scheme 'JavaDev'."
