# Настройка Git

## Первоначальная настройка Git

$`git config --global user.name "Ivan Pushkin"`
$`git config --global user.email puskin@gmail.com`

## Ошибка при которой прокручивается на черный экран

Options -> Window -> Rows присвоить 32, вместо 24, который епо умолчанию

## Команды

Показать список настроек: 

$`git config --list --show-origin`

## Генерация ssh ключей 

```bash
# ключ SSH с шифрованием RSA и 4096
ssh-keygen -t rsa -b 4096 -C "ваша@почта.com"

eval `ssh-agent -s`

`ssh-add ~/.ssh/id_rsa`

cat ~/.ssh/id_rsa.pub
```

## ssh агент

Запуск в фоновом режиме  
`eval "$(ssh-agent -s)"`

Добавить ключ и указать пароль  
`ssh-add ~/.ssh/id_rsa`

[Подробнее об ssh-agent](https://kamarada.github.io/en/2019/07/14/using-git-with-ssh-keys/#.X-DHNNgzY2w)
[Менее подробно, но на русском](https://only-to-top.ru/blog/tools/2019-12-08-git-ssh-windows.html)

## Сценариb взаимодействия

### Стандартный

```bash
git add . # Добавить все неотслеживаемые файлы под контроль гита
git commit -m "comment" # Закоммитить изменения
git push # Загрузить все коммиты в удаленный репозиторий
```


