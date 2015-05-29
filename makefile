build:
	docker build --rm -f ./dockerfiles/wheezy-latest -t lafourchette/wheezy .
	docker build --rm -f ./dockerfiles/mongodb-latest -t lafourchette/mongodb .
	docker build --rm -f ./dockerfiles/php55-fpm-latest -t lafourchette/php55-fpm .
	docker build --rm -f ./dockerfiles/nginx-latest -t lafourchette/nginx .
	docker build --rm -f ./dockerfiles/mysql-latest -t lafourchette/mysql .
