CARGO = cargo
TARGET_DIR = target
BIN_NAME = my_cli

.PHONY: clean
clean:
	$(CARGO) clean

.PHONY: build
build:
	$(CARGO) build

.PHONY: run
run: build
	$(CARGO) run -- 

.PHONY: test
test:
	$(CARGO) test

.PHONY: run-with
run-with: build
	$(CARGO) run -- $(args)

.PHONY: help
help:
	@echo "Makefile for Rust CLI Application"
	@echo ""
	@echo "Usage:"
	@echo "  make build         - build" 
	@echo "  make run           - run"
	@echo "  make test          - run tests"
	@echo "  make clean         - clean"
	@echo "  make run-with args - run with arguments"
	@echo "  make help          - show help"
