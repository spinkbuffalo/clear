install-dependencies:
	npm ci

lint:
	npx eslint .

test:
	npm test

postgres:
	docker run -d --rm -it --name postgres -p 5432:5432\
	-e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=postgres\
	postgres:latest || true