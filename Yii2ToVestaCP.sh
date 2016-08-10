#!/bin/bash

if [ ! -d "/home/$2" ]; then
    echo "User $2 not found!"
    echo "Ex. Yii2ToVestaCP.sh basic user domen"
    exit 1
fi

if [ ! -d "/home/$2/web/$3" ]; then
    echo "Domen $3 not found!"
    echo "Ex. Yii2ToVestaCP.sh basic user domen"
    exit 1
fi

if [[ "$1" == "basic" || "$1" == "advanced" ]]; then
    cd /home/$2/web/$3
    composer create-project --prefer-dist yiisoft/yii2-app-$1 yii2
    rm -rf public_html
    if [[ "$1" == "basic" ]]; then
        ln -s yii2/web public_html
    else
        cd yii2
        php init
        cd ..
        ln -s yii2/frontend/web public_html
        cd yii2/frontend/web
        ln -s ../../backend/web admin
    fi
    exit 0
else
    echo "Choese mode: basic or advanced"
    echo "Ex. Yii2ToVestaCP.sh basic user domen"
    exit 1
fi
