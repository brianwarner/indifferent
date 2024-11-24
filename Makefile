clean:
	rm -rf \
	__pycache__ \
	src/indifferent/__pycache__ \
	tests/__pycache__ \
	.pytest_cache \
	dist \
	_version.py \
	src/*.egg-info \
	docsrc/_doctrees
	
test:
	pytest

build: clean test
	python3 -m build

html: build
	cp -r img docsrc/
	sphinx-build -b html docsrc docs -E -d "docsrc/_doctrees"
