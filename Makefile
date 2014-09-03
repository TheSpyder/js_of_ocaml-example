BUILD=eval `opam config env` && ocamlbuild -use-ocamlfind -plugin-tag 'package(js_of_ocaml.ocamlbuild)'
OUT=src/example.js

build:
	${BUILD} -quiet -tags 'pretty, noinline, debug' ${OUT}

dist: clean
	@${BUILD} -quiet -tags 'opt(3)' ${OUT}

clean:
	@ocamlbuild -quiet -clean

.PHONY: build dist sublime clean
