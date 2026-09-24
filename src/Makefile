ACME ?= acme
OUT ?= ../build/exotic_megablast_v45.prg
SRC = subway.s

all: $(OUT)

$(OUT): $(SRC) wire_cube_chars.bin wire_cube_mask.bin
	mkdir -p ../build
	$(ACME) -f cbm -o $(OUT) $(SRC)

plain:
	$(ACME) $(SRC)

clean:
	rm -f $(OUT)
