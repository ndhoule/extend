SRCS = index.js
TESTS = test/index.js

GREP ?=.

test:
	@node_modules/.bin/mocha \
		--ui bdd \
		--reporter spec \
		--grep "$(GREP)" \
		$(TESTS)

.DEFAULT_GOAL = test
.PHONY: test
