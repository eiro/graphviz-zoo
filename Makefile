FLOWCHARTS=$(wildcard *fl4 )
IMAGES=$(patsubst %.fl4, %.png, $(FLOWCHARTS))
DOTSRCS=$(patsubst %.fl4, %.dot, $(FLOWCHARTS))
FL4TXT=$(patsubst %.fl4, %.txt, $(FLOWCHARTS))

all: $(IMAGES) $(DOTSRCS) $(FL4TXT) readme.html

%.txt: %.fl4
	 cat $< > $@

%.dot: %.fl4 flow.m4
	m4 flow.m4 $< > $@

%.png: %.dot
	dot -Tpng -o $@ $<

%.html: %.md
	pandoc -c theme.css -thtml5 --toc -s -o $@ $<
