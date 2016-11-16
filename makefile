STANBUL=./node_modules/.bin/istanbul
_MOCHA=./node_modules/.bin/_mocha
MOCHA=./node_modules/mocha/bin/_mocha
OPTS:=--recursive 
test:
	@$(MOCHA) $(OPTS)
cover:
	$(ISTANBUL) istanbul cover $(_MOCHA)
cover2:
	$(ISTANBUL) istanbul cover $(_MOCHA) 'test/demo3.js'
test-coveralls:
	$(ISTANBUL) istanbul cover $(_MOCHA) --report lcovonly -- -R spec && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js || true
.PHONY:test cover
