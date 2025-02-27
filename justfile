#!/usr/bin/env just --justfile

help:
  @just --list

build:
    mkdir -p dist
    typst compile src/main.typ dist/Frank_Mayer_KI_in_der_Lehre_2025.pdf

clean:
    rm -rf *.pdf
    rm -rf dist

watch: build
    xattr -d com.apple.quarantine dist/Frank_Mayer_KI_in_der_Lehre_2025.pdf || true
    typst watch src/main.typ dist/Frank_Mayer_KI_in_der_Lehre_2025.pdf --open
