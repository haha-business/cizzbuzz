#!/bin/sh
# well, it may be the case that this works on the BSDs, but of course it may
# well not. funny creatures, those BSDs. not as predictable as a herd of GNU
yes '' \
	| sed '
		3~3{ s/$/Fizz/ }
		5~5{ s/$/Buzz/ }

		# do you *understand* now? do you feel the weight of enlightenment?
		t
		=; d
	'

