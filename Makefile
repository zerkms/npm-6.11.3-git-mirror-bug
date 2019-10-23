.PHONY: clean
clean:
	rm -rf app/node_modules app/package-lock.json

.PHONY: run-13.0
run-13.0: clean
	docker build -t node-13.0 -f 13.0.Dockerfile .
	docker run --rm -v $$(pwd)/app:/app node-13.0

.PHONY: run-12.11
run-12.11: clean
	docker build -t node-12.11 -f 12.11.Dockerfile .
	docker run --rm -v $$(pwd)/app:/app node-12.11

.PHONY: run-12.10
run-12.10: clean
	docker build -t node-12.10 -f 12.10.Dockerfile .
	docker run --rm -v $$(pwd)/app:/app node-12.10
