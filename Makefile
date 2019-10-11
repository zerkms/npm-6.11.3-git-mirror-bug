.PHONY: clean
clean:
	rm -rf app/node_modules app/package-lock.json

.PHONY: run-12.11
run-12.11: clean
	docker build -t node-12.11 -f 12.11.Dockerfile .
	docker run --rm -v $$(pwd)/app:/app node-12.11

.PHONY: run-12.10
run-12.10: clean
	docker build -t node-12.10 -f 12.10.Dockerfile .
	docker run --rm -v $$(pwd)/app:/app node-12.10
