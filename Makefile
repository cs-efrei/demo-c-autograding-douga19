.SILENT: test tidy
SHELL := /bin/bash
FILES=box digits suffix taxi
CC=clang
CFLAGS=@compile_flags.txt

all: tidy
test: $(FILES)
	for question in $(FILES); do ./test.sh $$question; done

tidy: test
	clang-tidy -quiet *.c 2> /dev/null

clean:
	rm $(FILES)
# vim:noexpandtab
