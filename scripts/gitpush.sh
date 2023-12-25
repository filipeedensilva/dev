#!/bin/zsh
echo "Ready to push? (y/n): "
read response
if [[ $response == "y" ]]; then
    echo "Please write a message to be commited: "
    read message
    if [[ !$message ]]; then
         git add . ; git commit -am. ; git push
    else
        git add . ; git commit -m $message ; git push
    fi
elif [[ $response == "n" ]]; then
    echo "wtf are you even doing?!"
else
    echo "Please enter y/n"
fi
