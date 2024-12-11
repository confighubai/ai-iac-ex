.PHONY: all init plan apply validate clean

SUBDIRS := 4o claude3.5sonnet gemini1206 o1

# Default to terraform, can override with make TF=tofu
TF ?= terraform

all: init validate plan apply

init:
	@for dir in $(SUBDIRS); do \
		echo "Initializing $$dir..."; \
		( cd $$dir && $(TF) init ); \
	done

validate:
	@for dir in $(SUBDIRS); do \
		echo "Validating $$dir..."; \
		( cd $$dir && $(TF) validate ); \
	done

plan:
	@for dir in $(SUBDIRS); do \
		echo "Planning $$dir..."; \
		( cd $$dir && $(TF) plan -no-color -out=tfplan ); \
	done

apply:
	@for dir in $(SUBDIRS); do \
		echo "Applying $$dir..."; \
		( cd $$dir && $(TF) apply tfplan ); \
	done

clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir..."; \
		( cd $$dir && rm -f .terraform/ .terraform.lock.hcl tfplan ); \
	done
