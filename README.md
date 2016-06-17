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

## Установка скрипта Yii2ToVestaCP
```
wget https://raw.githubusercontent.com/kas-cor/Yii2ToVestaCP/master/Yii2ToVestaCP.sh
chmod u+x Yii2ToVestaCP.sh

or

wget https://raw.githubusercontent.com/kas-cor/Yii2ToVestaCP/master/Yii2ToVestaCP.sh && chmod u+x Yii2ToVestaCP.sh
```

## Использование

### Установка basic
```
./Yii2ToVestaCP.sh basic user domen
```

#### Расположение файлов

```
/home/user/web/domen/yii2/ - Фраймворк Yii2
assets - Конфигурация стороних пакетов
commands - Консольный контролер HelloWord
config - Конфигурационные файлы
controllers - Контролеры
mail
  layouts - Представление для почтового сообщения
models - Модели
runtime - Служебная информация
views - Представления
  layouts - Основное предстовление
  site - Представления SiteControler
web - Файлы доступные из веб
  assets - Сторонние пакеты
  css - CSS файлы стилей
```

### Установка advanced
```
./Yii2ToVestaCP.sh advanced user domen
```

#### Расположение файлов

```
/home/user/web/domen/yii2/ - Фраймворк Yii2

backend - Админка доступкая по http://domen/admin/
  assets - Конфигурация стороних пакетов
  config - Конфигурационные файлы
  controllers - Контролеры
  models - Модели
  runtime - Служебная информация
    debug - Дебаг логи
    logs - Лиги ошибок
  views - Представления
    layouts - Основное предстовление
    site - Представления SiteControler
  web - Файлы доступные из веб
    assets - Сторонние пакеты
    css - CSS файлы стилей

frontend - Сайт доступный по http://domen/
  assets - Конфигурация стороних пакетов
  config - Конфигурационные файлы
  controllers - Контролеры
  models - Модели
  runtime - Служебная информация
    debug - Дебаг логи
    logs - Лиги ошибок
    mail - Файлы писем, если не включена отправка
  views - Представления
    layouts - Основное предстовление
    site - Представления SiteControler
  web - Файлы доступные из веб
    assets - Сторонние пакеты
    css - CSS файлы стилей
```
