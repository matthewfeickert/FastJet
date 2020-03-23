default: image

all: image

image:
	docker build . \
	-f Dockerfile \
	--build-arg BASE_IMAGE=python:3.7-slim \
	--build-arg FASTJET_VERSION=3.3.3 \
	--tag matthewfeickert/fastjet:fastjet3.3.3-python3.7 \
	--tag matthewfeickert/fastjet:latest

run:
	docker run --rm -it matthewfeickert/fastjet:latest

test:
	docker run \
		--rm \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		matthewfeickert/fastjet:latest \
		-c "g++ tests/test_short_example.cc -o short_example; ./tests/short_example"
	docker run \
		--rm \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		matthewfeickert/fastjet:latest \
		-c "python tests/test_python.py"
