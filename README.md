# composer
Docker image for [Composer](https://getcomposer.org/)

## Dockerfile for composer

Extends the official version of composer by adding the **gd** PHP extension making it suitable to use with **Drupal**.

Using PHP Extension Installer script from [here](https://github.com/mlocati/docker-php-extension-installer).

## Example Usage

```
docker run --rm --interactive --tty --user $(id -u):$(id -g) --memory="2g" --volume $PWD:/app satyadeep/composer require drupal/pathauto
```