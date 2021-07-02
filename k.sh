# switch k8s cluster quickly
function k(){
    kubectl="/usr/bin/env kubectl"
    if [ -z "$1" ];then
        sh -c "$kubectl config get-contexts"
        show_context_in_ps1
        return 0
    fi

    sh -c "$kubectl config use-context $1"
    if [ "$?" -ne "0" ]; then
        echo "--- please select cluster from the following(NAME) ---"
        sh -c "$kubectl config get-contexts"
    else
      show_context_in_ps1
    fi
    return 0
}

export PS1_BACKUP=''
function show_context_in_ps1(){
  local curr_context=$(echo `kubectl config current-context`)
  local context_name_template='\\[\\e[1;36m\\]'${curr_context}'\\[\\e[0m\\]' # you can change color here, attention: two backslash for a '\'
  if [ -z "${PS1_BACKUP}" ];then
    PS1_BACKUP=$PS1
  fi
  if [ -z "${curr_context}" ];then #recover PS1
    PS1=${PS1_BACKUP}
  else # set a new ps1
    PS1=$(echo $PS1_BACKUP | sed 's%\\\$% '${context_name_template}' \\\$ %')
  fi
}
