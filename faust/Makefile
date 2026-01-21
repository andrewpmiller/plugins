MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKEFILE_DIR := $(dir $(MAKEFILE_PATH))
export NT_API_PATH := $(abspath $(MAKEFILE_DIR)../distingNT_API)/

export FAUSTARCH = $(NT_API_PATH)faust/
export CXXFLAGS = -I$(NT_API_PATH)include

$(info NT_API_PATH is $(NT_API_PATH))
$(info FAUSTARCH is $(FAUSTARCH))
$(info CXXFLAGS is $(CXXFLAGS))

inputs := $(wildcard src/*.dsp)
outputs := $(patsubst src/%.dsp,plugins/%.o,$(inputs))

.PHONY: all clean

all: $(outputs)

clean:
	rm -rf plugins/

plugins/%.o: src/%.dsp
	mkdir -p $(@D)
	$(FAUSTARCH)faust2distingnt $^ $@