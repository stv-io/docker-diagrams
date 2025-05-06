# docker-diagrams

A docker image for [diagrams](https://diagrams.mingrammer.com/). This is especially useful for CI/CD pipelines, or when you don't want to install `diagrams` on your host, and just want to use a pre-built image.

## Running

```bash
$ cat example.py | docker run -i --rm -v $(pwd)/out:/out ghcr.io/stv-io/docker-diagrams:v0.24.1
```

The `/out` directory is where `diagram` will generate your PNGs.

## Credits

This project is inspired by [docker-diagrams](https://github.com/gtramontina/docker-diagrams).