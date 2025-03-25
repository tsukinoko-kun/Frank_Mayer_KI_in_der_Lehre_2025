#!/usr/bin/env just --justfile

help:
  @just --list

build:
    mkdir -p dist
    docker run -v ./src:/src:ro -v ./dist:/dist ghcr.io/typst/typst:v0.12.0 compile /src/main.typ /dist/Frank_Mayer_KI_in_der_Lehre_2025.pdf

clean:
    rm -rf *.pdf
    rm -rf dist

watch: build
    docker run -v ./src:/src:ro -v ./dist:/dist ghcr.io/typst/typst:v0.12.0 watch /src/main.typ /dist/Frank_Mayer_KI_in_der_Lehre_2025.pdf
