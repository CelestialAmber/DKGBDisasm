.PHONY: all tools compare clean tidy

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

ROM := donkeykong.gb
OBJS := main.o wram.o
MD5 := md5sum -c

all: $(ROM)

compare: $(ROM)
	@$(MD5) rom.md5
	#python tools/unnamed.py -r . donkeykong.sym

tidy:
	rm -f $(ROM) $(OBJS) $(ROM:.gb=.sym) $(ROM:.gb=.map)
	$(MAKE) -C tools clean

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pcm' -o -iname '*.lz' \) -exec rm {} +

tools:
	$(MAKE) -C tools/

ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))
endif


%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm -h -o $@ -p 0x00 $<

$(ROM): $(OBJS)
	rgblink -n $(ROM:.gb=.sym) -m $(ROM:.gb=.map) -o $@ $(OBJS)
	rgbfix -sv -k 01 -l 0x33 -m 0x03 -p 0xFF -r 02 -t "DONKEY KONG" $@

gfx/font.2bpp: tools/gfx += --trim-whitespace
gfx/bank4mariosprites.2bpp: tools/gfx += --trim-whitespace
gfx/bank11graphics.2bpp: tools/gfx += --trim-whitespace
gfx/gameover_screen.2bpp: tools/gfx += -w 2
#gfx/dk_menu_finger.2bpp: tools/gfx += --trim-whitespace

%.2bpp.lz : %.2bpp
	$(if $(tools/dkcompress),\
		tools/dkcompress $(tools/dkcompress) $< $@,\
		tools/dkcompress $< $@)

%.2bpp: %.png
	rgbgfx -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	rgbgfx -d1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)