.PHONY: all init plan apply validate clean

SUBDIRS := 4o claude3.5sonnet gemini1206 o1

all: init validate plan apply

init:
	@for dir in $(SUBDIRS); do \
		echo "Initializing $$dir..."; \
		cd $$dir && terraform init && cd ..; \
	done

validate:
	@for dir in $(SUBDIRS); do \
		echo "Validating $$dir..."; \
		cd $$dir && terraform validate && cd ..; \
	done

plan:
	@for dir in $(SUBDIRS); do \
		echo "Planning $$dir..."; \
		cd $$dir && terraform plan -out=tfplan && cd ..; \
	done

apply:
	@for dir in $(SUBDIRS); do \
		echo "Applying $$dir..."; \
		cd $$dir && terraform apply tfplan && cd ..; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir..."; \
		cd $$dir && rm -f tfplan && cd ..; \
	done
