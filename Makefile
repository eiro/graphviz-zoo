all: proc.png

%.dot: %.4dot flow.m4
	m4 flow.m4 $< > $@

%.png: %.dot
	dot -Tpng -o $@ $<
