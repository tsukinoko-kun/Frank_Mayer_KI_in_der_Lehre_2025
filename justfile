#!/usr/bin/env just --justfile

help:
  @just --list

build:
    mkdir -p dist
    typst compile src/main.typ dist/main.pdf

clean:
    rm -rf dist/*

watch:
    typst watch src/main.typ dist/main.pdf --open
