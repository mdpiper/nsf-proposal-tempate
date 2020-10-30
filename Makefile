# Makefile for proposal

proposal = main


proposal:
	latexmk -pdf ${proposal}

show:
	latexmk -pv -pdf ${proposal}

clean:
	latexmk -c

cleaner:
	latexmk -C

.DEFAULT_GOAL := proposal
.PHONY: clean cleaner
