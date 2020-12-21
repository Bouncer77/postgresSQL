# Настройка Git

## Первоначальная настройка Git

$`git config --global user.name "Ivan Pushkin"`
$`git config --global user.email puskin@gmail.com`

## Ошибка при которой прокручивается на черный экран

Options -> Window -> Rows присвоить 32, вместо 24, который епо умолчанию

## Команды

Показать список настроек: 

$`git config --list --show-origin`

## ssh агент

Запуск в фоновом режиме  
`eval "$(ssh-agent -s)"`

Добавить ключ и указать пароль  
`ssh-add ~/.ssh/id_rsa`

[Подробнее об ssh-agent](https://kamarada.github.io/en/2019/07/14/using-git-with-ssh-keys/#.X-DHNNgzY2w)
