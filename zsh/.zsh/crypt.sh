function encrypt
{
    # $1 file to encrypt
    # $2 reciver gpg id
 
    if [ -f "$1" ]; then
        echo -e "\033[32m start encrypt \033[0m"
        gpg --encrypt --local-user sun --recipient "$2" --compress-algo zip "$1"
        echo -e "\033[32m start sign \033[0m"
        gpg --detach-sign "$1".gpg
    else
        echo -e "\033[31m $1 file exists! \033[0m"
    fi
}

function decrypt
{
    # $1 file to decrypt
    # $2 output file
    if [ ! -f "$1" ]; then
        echo -e \033[31m input file "$1" not exists! \033[0m
        exit 1
    else
        if [ ! -f "$2" ]; then
                echo -e "\033[32m verify sign \033[0m"
                gpg --verify "$1".sig    
            if [ $? !=0 ]; then
                echo -e "\033[31m verify sign failed! \033[0m"
                exit 1
            else
                echo -e "\033[32m start decrypt \033[0m"
                gpg --decrypt --output "$2" "$1"
            fi

        else
            echo -e "\033[31m output file $2 exists! \033[0m"
        fi
    fi

}
