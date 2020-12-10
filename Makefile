IMAGE=markthebault/k8s-sa-token-pacther
TAG=latest

build:
	docker build -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)