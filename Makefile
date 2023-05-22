.PHONY: start
start:
	python -m uvicorn api:app --reload --port 9000

.PHONY: format
format:
	black .
	isort .