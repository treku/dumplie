build:
	docker build -t dumplie -f docker/php7/Dockerfile .

test:
	docker run --rm -it dumplie bash ./tests/run_tests.sh

run:
	docker run -it dumplie bash

.PHONY: build test run
