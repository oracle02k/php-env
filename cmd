#!/usr/bin/bash

if [ ${1} = "composer" ]; then
    docker compose exec php-cli composer ${@:2}
elif [ ${1} = "phpunit" ]; then
    docker compose exec php-cli vendor/bin/phpunit --colors=always ${@:2}
elif [ ${1} = "psalm" ]; then
    docker compose exec php-cli vendor/bin/psalm ${@:2}
elif [ ${1} = "php-cs-fixer" ]; then
    docker compose exec php-cli vendor/bin/php-cs-fixer ${@:2}
elif [ ${1} = "php-cli" ]; then
    docker compose exec php-cli ${@:2}
fi