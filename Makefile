COOKIECUTTER_VERSION = 1.5.1
IMAGE_NAME ?= amaysim/cookiecutter:$(COOKIECUTTER_VERSION)
TAG = $(COOKIECUTTER_VERSION)

build:
	docker build -t $(IMAGE_NAME) .

pull:
	docker pull $(IMAGE_NAME)

shell:
	docker run --rm -it --user $(shell id -u):$(shell id -g) -v $(HOME)/.ssh:/home/cookiecutter/.ssh:Z -v $(PWD):/srv/app:Z --entrypoint=sh $(IMAGE_NAME)

tag:
	-git tag -d $(TAG)
	-git push origin :refs/tags/$(TAG)
	git tag $(TAG)
	git push origin $(TAG)
