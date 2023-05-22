.PHONY: start
start:
	python -m uvicorn main:app --reload --port 9000

.PHONY: format
format:
	black .
	isort .