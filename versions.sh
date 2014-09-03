#!/bin/sh -e

build() {
  echo "building with $1..."
  opam install js_of_ocaml.$1 > /dev/null && make dist && ls -la _build/src/example.js
}

for i in 2.0 2.1 2.2 2.3 2.4 2.4.1; do
  build $i
done