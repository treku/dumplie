#!/bin/bash

./bin/phpspec run --format=pretty
./bin/phpunit --testdox
