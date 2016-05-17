.PHONY: clean install test

install:
	npm install

test:
	node --harmony tests/test.js

lint:
	./node_modules/.bin/jshint lib/*.js

cover:
	node --harmony node_modules/istanbul/lib/cli.js cover tests/test.js && ./node_modules/.bin/istanbul check-coverage

clean:
	rm -rf node_modules
