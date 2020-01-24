key:
	docker exec laravel php artisan key:generate
ide:
	docker exec laravel php artisan ide-helper:generate; php artisan ide-helper:models -R -W -D src/Eloquent -I App\\User; php artisan ide-helper:meta
phpunit:
	docker exec laravel ./vendor/bin/phpunit
composer-install:
	docker-compose run --rm composer install
composer-update:
	docker-compose run --rm composer update
yarn-install:
	docker-compose run --rm node yarn install
yarn-upgrade:
	docker-compose run --rm node yarn upgrade
