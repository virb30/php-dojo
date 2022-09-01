#!/bin/bash

args=()
coverage=0

while [ $# -gt 0 ]; do
  case $1 in
    -c)
      shift
      args+=("$@")
      coverage=1
      break
      ;;
    *)
      args+=("$1")
      ;;
  esac
  shift
done

if [ $coverage = 1 ]; then
  docker exec -it -e "TERM=xterm-256color" -e "XDEBUG_MODE=coverage" php-dojo_php_1 php ./vendor/bin/phpunit $args
else
  docker exec -it -e "TERM=xterm-256color" -e "XDEBUG_MODE=coverage" php-dojo_php_1 php ./vendor/bin/phpunit --no-coverage $args
fi