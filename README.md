# Orgella configserver

Config server for my masters degree application Orgella. It's main priority is to send config files to services.

## Available config variables before starting it

| Variable      | Required      | Description  | Default |
| ------------- |:-------------:| :------------:| :------: |
| server.port | `False` | Port of your application to run on | `8012` |
| git.uri | `True` | Uri for your config github repository  |
| git.username | `True` | Your github username |
| git.password | `True` | Your personal access token generated from `Settings -> Developer settings -> personal access tokens` |
| encrypt.file-name | `False` | Name of your jks file | `apiEncryptionKey.jks` |
| encrypt.location | `False` | Encrypt location of your `[...].jks` file | `${userHome}/apiEncryptionKey.jks` |
| encrypt.file-alias | `False` | Encrypt alias of your `[...].jks` file | `apiEncryptionKey.jks` |
| encrypt.password | `True` | Encrypt password of your `[...].jks` file |
| rabbit.host | `False` | RabbitMQ Host ip | `localhost` |
| rabbit.port | `False` | RabbitMQ Host port | `5672` |
| rabbit.username | `False` | RabbitMQ username | `guest` |
| rabbit.password | `False` | RabbitMQ password | `guest` |