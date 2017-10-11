# Приложение "Шашлыки"
#### Приложение, в котором можно спланировать совместные мероприятия

Проект реализован на Ruby on Rails 5.1

#### Demo
http://bbq.rabadan.ru

### Установка приложения:
```ssh
git clone git@github.com:rabadan/bbq.git bbq
cd bbq
bundle install
bundle exec rake db:migrate
```

### установка ENV key вашего environments
#### SENDGRID
Если вы деплоите на heroku - используйте Add-ons sendgrid

Или получите ключи на http://sendgrid.com
```
SENDGRID_USERNAME = <sendgrid username>
SENDGRID_PASSWORD = <sendgrid password>
SENDGRID_DOMAIN = <your domain>
```

#### AMAZON S3
Получить ключи можно тут: https://aws.amazon.com/
```
S3_ACCESS_KEY = <amazon s3 access key>
S3_BUCKET_NAME = <amazon s3 bucket name>
S3_SECRET_KEY = <amazon s3 secret key>
S3_REGION = <s3 region> (example: us-east-2)
```


### Запуск сервера
```ssh
bundle exec rails s -b 0.0.0.0 -p 3000
```

### Автор
[Rabadan Akagasanov](http://rabadan.ru)
 
For all questions and suggestions please contact: rabadan731@yandex.ru