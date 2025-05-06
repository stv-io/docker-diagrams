# docker-diagrams

"Forked" from https://github.com/gtramontina/docker-diagrams

#### _Authenticate docker client with Github packages docker registry:_

Reference - https://docs.github.com/en/free-pro-team@latest/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages

Create a personal access token, with `read:packages` permissions. Drop it somewhere on your machine, such as `~/.github/docker-token`

before you pull, login to the registry:

```cat ~/.github/docker-token | docker login https://ghcr.io -u <username> --password-stdin```

#### _Running:_

```
$ cat example.py | docker run -i --rm -v $(pwd)/out:/out ghcr.io/stv-io/docker-diagrams:v0.24.4
```

The `/out` directory is where `diagram` will generate your PNGs.
