.PHONY: all
all:
	ocamlbuild -use-ocamlfind -pkg oUnit test.native

.PHONY: clean
clean:
	ocamlbuild -clean
