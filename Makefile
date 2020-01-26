key:
	docker-compose exec laravel php artisan key:generate
ide:
	docker-compose exec laravel php artisan ide-helper:generate && php artisan ide-helper:models -R -W -D src/Eloquent -I App\\User && php artisan ide-helper:meta
phpunit:
	docker-compose exec laravel ./vendor/bin/phpunit
composer-install:
	docker-compose run --rm composer install
composer-update:
	docker-compose run --rm composer update
yarn-install:
	docker-compose run --rm node yarn install
yarn-upgrade:
	docker-compose run --rm node yarn upgrade
dusk:
	docker-compose exec laravel ln -sf /usr/bin/chromedriver /app/vendor/laravel/dusk/bin/chromedriver-linux && php artisan dusk
