# switch k8s cluster quickly
function k(){
    kubectl="/usr/bin/env kubectl"
    if [ -z "$1" ];then
        sh -c "$kubectl config get-contexts"
        return 0
    fi

    sh -c "$kubectl config use-context $1"
    if [ "$?" -ne "0" ]; then
        echo "--- please select cluster from the following(NAME) ---"
        sh -c "$kubectl config get-contexts"
    fi
    return 0
}
