name=practicar
version=0.0.0-1

src=$(CURDIR)/src
rocktree=$(CURDIR)/rocks
target=$(CURDIR)/target
lib=$(rocktree)/share/lua/5.1

rockspec=$(CURDIR)/$(name)-$(version).rockspec
love=$(target)/$(name).love

all: love

install:

$(target) $(rocktree) $(lib):
	mkdir -p $@

luarocks: | $(rocktree)
	luarocks --tree=$(rocktree) install $(rockspec)

love: luarocks | $(target) $(lib)
	cd $(src) && zip -q9r $(love) .
	cd $(lib) && zip -q9r $(love) .

clean:
	rm -rf $(target)

pristine: clean
	rm -rf $(rocktree)
