# docker-cookiecutter

Cookiecutter in a Docker container.

Docker Hub repo: https://hub.docker.com/r/amaysim/cookiecutter/

# Usage

In the directory that you want to create your project in:
```
docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/srv/app:Z -v ${HOME}/.ssh:/home/cookiecutter/.ssh:Z amaysim/cookiecutter:1.5.1 gh:pydanny/cookiecutter-django
```

To alias these long commands to just `cookiecutter gh:pydanny/cookiecutter-django`, drop this in to your `~/.bashrc` and then reload it with `source ~/.bashrc`:
```
alias cookiecutter='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/srv/app:Z -v ${HOME}/.ssh:/home/cookiecutter/.ssh:Z amaysim/cookiecutter:1.5.1'
```

# Contributing

To set it up for local development:

```
git clone https://github.com/audreyr/docker-cookiecutter.git
cd docker-cookiecutter
make build
make shell
```
