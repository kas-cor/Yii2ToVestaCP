# Yii2ToVestaCP
Установка Yii2 на VestaCP (Ubuntu 14.04.4 LTS)

## Установка Composer
```
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

## Установка plugin для установки bower и npm пакетов
```
composer global require "fxp/composer-asset-plugin:~1.1.1"
```

## Установка скрипта Yii2ToVestaCp
```
wget https://raw.githubusercontent.com/kas-cor/Yii2ToVestaCP/master/Yii2ToVestaCp.sh && chmod u+x Yii2ToVestaCp.sh
```

## Использование

### Установка basic
```
./Yii2ToVestaCp.sh basic user domen
```

### Установка advanced
```
./Yii2ToVestaCp.sh advanced user domen
```
