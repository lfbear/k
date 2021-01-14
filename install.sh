#!/usr/bin/env bash
cd ~/.kube
curl -OL https://raw.githubusercontent.com/lfbear/k/main/k.sh

if [ "$?" -ne "0" ]; then
    echo -e "\n\nIt seems that can NOT connect to githubusercontent.com\n"
    exit 1
fi

startup_script=""
if [ "$SHELL"=="/bin/zsh" ];then
    startup_script=".zshrc"
elif [ "$SHELL"=="/bin/bash" ] || [ "$SHELL"=="/bin/sh" ];then
    if [ "$(uname)"=="Darwin" ];then
        startup_script=".bash_profile"
    else
        startup_script=".bashrc"
    fi
fi

source $HOME/.kube/k.sh

if [ -z "$startup_script" ];then
    tips=$(cat <<EOF
#-----------------------------------------------------------------------------#
| Please copy the following content and add the bottom of  your starup script |
#-----------------------------------------------------------------------------#
# alias for kebectl config use-context
source ~/.kube/k.sh
# end of code
EOF
)
    echo -e "$tips"
else
    echo -e "# alias for kebectl config use-context\nsource ~/.kube/k.sh" >> "${HOME}/$startup_script"
fi
echo "Shell tool [k] install successfully, u can type 'k' in your terminal. 😊"
