svgin=svg-cards
svgout=svg-out
pngout=png-out

svgin_files=$(shell ls svg-cards/*.svg)
svgout_files=$(patsubst $(svgin)/%,$(svgout)/%,$(svgin_files))
pngout_files=$(patsubst $(svgout)/%.svg,$(pngout)/%.png,$(svgout_files))

$(svgout):
	mkdir -p $(svgout)

$(pngout):
	mkdir -p $(pngout)

svg: $(svgout) $(svgout_files)

png: svg $(pngout) $(pngout_files)

$(svgout)/%.svg: $(svgin)/%.svg
	xmlstarlet edit -d '//_:path[@id="path5"]' $< > $@

$(pngout)/%.png: $(svgout)/%.svg
	node svg2png.js $< $@

clear:
	rm -r $(svgout) $(pngout)

.PHONY: clear svg png