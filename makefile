build:
	docker build --rm -f ./dockerfiles/os/wheezy-latest -t lafourchette/wheezy .
	docker build --rm -f ./dockerfiles/projects/projects-latest -t lafourchette/projects .
	docker build --rm -f ./dockerfiles/mongodb/mongodb-latest -t lafourchette/mongodb .
	docker build --rm -f ./dockerfiles/php55-fpm/php55-fpm-latest -t lafourchette/php55-fpm .
	docker build --rm -f ./dockerfiles/nginx/nginx-latest -t lafourchette/nginx .
	docker build --rm -f ./dockerfiles/db/db-server-latest -t lafourchette/db-server .
	docker build --rm -f ./dockerfiles/db/db-data-latest -t lafourchette/db-data .
