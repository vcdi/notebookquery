.PHONY: sass

lint:
	flake8 .

fmt:
	isort -rc . --skip .venv
	black .

clean:
	find . -name \*.pyc -delete
	rm -rf .cache dist

sass:
	sass sass/screen.scss notebookquery/css/custom.css