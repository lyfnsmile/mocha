STANBUL=./node_modules/.bin/istanbul
_MOCHA=./node_modules/.bin/_mocha
MOCHA=./node_modules/.bin/mocha
OPTS:=--recursive 
test:
	@$(MOCHA) $(OPTS)
cover:
	$(ISTANBUL) cover $(_MOCHA) $(OPTS)
cover2:
	$(ISTANBUL) cover $(_MOCHA) 'test/demo3.js'
test-coveralls:
	$(ISTANBUL) cover ./node_modules/mocha/bin/_mocha --report lcovonly -- -R spec && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js && rm -rf ./coverage
.PHONY:test cover
