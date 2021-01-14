# switch k8s cluster quickly
function k(){
    kubectl="env kubectl"
    if [ -z "$1" ];then
        $kubectl config get-contexts
        return 0
    fi

    $kubectl config use-context $1
    if [ "$?" -ne "0" ]; then
        echo "--- please select cluster from the following(NAME) ---"
        $kubectl config get-contexts
    fi
    return 0
}
