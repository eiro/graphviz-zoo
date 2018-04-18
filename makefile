FL4  = m4 -Ilib fl4chart
FLOWCHARTS=$(wildcard *fl4 )
IMAGES=$(patsubst %.fl4, %.svg, $(FLOWCHARTS))
DOTSRCS=$(patsubst %.fl4, %.dot, $(FLOWCHARTS))
FL4TXT=$(patsubst %.fl4, %.txt, $(FLOWCHARTS))

all: $(IMAGES) $(DOTSRCS) $(FL4TXT) readme.html

%.txt  : %.fl4              ; cat $< > $@
%.dot  : %.fl4 lib/fl4chart ; $(FL4) $< > $@
%.png  : %.dot              ; dot -Tpng -o $@ $<
%.svg  : %.dot              ; dot -Tsvg -o $@ $<
%.html : %.md               ; pandoc -c theme.css -thtml5 --toc -s -o $@ $<
