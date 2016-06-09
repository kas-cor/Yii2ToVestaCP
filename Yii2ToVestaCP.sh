#!/bin/bash

if [ ! -d "/home/$2" ]; then
    echo "User $2 not found!"
    exit 1
fi

if [ ! -d "/home/$2/web/$3" ]; then
    echo "Domen $3 not found!"
    exit 1
fi

cd /home/$2/web/$3

if [[ "$1" ==  "basic" ]]; then
    composer create-project --prefer-dist yiisoft/yii2-app-basic yii2
    rm -rf public_html
    ln -s yii2/web public_html
else
    composer create-project --prefer-dist yiisoft/yii2-app-advanced yii2
    rm -rf public_html
    cd yii2
    php init
    cd ..
    ln -s yii2/frontend/web public_html
    cd yii2/frontend/web
    ln -s ../../backend/web admin
fi
exit 0
