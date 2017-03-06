.PHONY: container run run-dev run-dev-interactive

container:
	docker build -t bable5/mastering-git:latest .

run:
	docker run -d -p 8000:8000 -t bable5/mastering-git

run-dev:
	docker run -v $(PWD)/slides:/slidedeck/slides -p 8000:8000 -t bable5/mastering-git

run-dev-interactive:
	docker run  -v $(PWD)/slides:/slidedeck/slides -i -t bable5/mastering-git /bin/bash
