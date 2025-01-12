#
export TOX_SCENARIO  ?= default
export TOX_ANSIBLE   ?= ansible_6.1

.PHONY: converge destroy verify lint

default: converge

test:
	@hooks/test

converge:
	@hooks/converge

destroy:
	@hooks/destroy

verify:
	@hooks/verify

lint:
	@hooks/lint
