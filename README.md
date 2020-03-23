# FastJet

`FastJet` Docker image with Python 3

[![Docker Pulls](https://img.shields.io/docker/pulls/matthewfeickert/fastjet)](https://hub.docker.com/r/matthewfeickert/fastjet)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/matthewfeickert/fastjet/latest)](https://hub.docker.com/r/matthewfeickert/fastjet/tags?name=latest)

> The FastJet package, written by Matteo Cacciari, Gavin Salam and Gregory Soyez, provides fast native implementations of many sequential recombination algorithms, including the longitudinally invariant kt longitudinally invariant inclusive Cambridge/Aachen and anti-kt jet finders. It also provides a uniform interface to external jet finders (notably SISCone) via a plugin mechanism.

`FastJet` 3's source is [distributed on the `FastJet` website](http://fastjet.fr/all-releases.html) and is a product of the [`FastJet` development team](http://fastjet.fr/about.html).

## Installation

- Check the [list of available tags on Docker Hub](https://hub.docker.com/r/matthewfeickert/fastjet/tags?page=1) to find the tag you want.
- Use `docker pull` to pull down the image corresponding to the tag. For example:

```
docker pull matthewfeickert/fastjet:fastjet3.3.3
```

## Use

You can either use the image as "`FastJet` as a service", as demoed here with the test program in the repo

```
docker run --rm -v $PWD:$PWD -w $PWD matthewfeickert/fastjet:fastjet3.3.3 \
  -c 'g++ tests/test_short_example.cc -o tests/short_example $(/usr/local/bin/fastjet-config --cxxflags --libs --plugins); ./tests/short_example'
```

or using the Python bindings

```
docker run --rm -v $PWD:$PWD -w $PWD matthewfeickert/fastjet:fastjet3.3.3 \
  -c "python tests/test_python.py"
```

or you can run interactively

```
docker run --rm -it matthewfeickert/fastjet:latest
```
