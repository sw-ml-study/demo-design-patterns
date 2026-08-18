set shell := ["sh", "-cu"]

default:
    @just --list

demos:
    ./scripts/run-all

tests *args:
    ./scripts/run-tests {{args}}

audit:
    ./scripts/validate-catalog catalog/demos.tsv
    ./scripts/validate-catalog catalog/tests.tsv
    ./scripts/check-repository-ownership
    ./scripts/check-web-standalone
    ./scripts/check-format
    ./scripts/check-docstrings
    ./scripts/check-demo-metadata
    ./scripts/check-closeout
    ./tests/test-repository-ownership
    ./tests/test-web-standalone
    ./tests/test-demo-metadata
    ./tests/test-bootstrap

check: audit demos tests
