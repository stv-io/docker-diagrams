# docker-diagrams

"Forked" from https://github.com/gtramontina/docker-diagrams

#### _Running:_

```sh
$ cat <diagram-file>.py | docker run -i --rm -v $(pwd)/out:/out docker.pkg.github.com/sacasumo/docker-diagrams/docker-diagrams:v0.1
```

The `/out` directory is where `diagram` will generate your PNGs.
