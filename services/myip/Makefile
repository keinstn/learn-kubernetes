REMOTE_REPO =

IMAGE_NAME = service/myip
SHORT_COMMIT_ID = $(shell git rev-parse --short HEAD)
ifdef USE_GITTAG
TAG_NAME = $(SHORT_COMMIT_ID)
else
TAG_NAME = latest
endif

LOCAL_IMAGE = ${IMAGE_NAME}:${TAG_NAME}
REMOTE_IMAGE = ${REMOTE_REPO}/${IMAGE_NAME}:${TAG_NAME}

.PHONY: about
.PHONY: build push push-local run


about:
	@echo "Usage:"
	@echo "    make build		  build docker image"
	@echo "    make push		  push docker image to remote registory"
	@echo "    make push-local    push docker image to local registory"
	@echo "    make run           run docker container"

build:
	docker build \
	-f Dockerfile \
	-t ${LOCAL_IMAGE} \
	.

push:
	docker tag ${LOCAL_IMAGE} ${REMOTE_IMAGE}
	docker push ${REMOTE_IMAGE}
	docker rmi ${REMOTE_IMAGE}

push-local:
	kind load docker-image ${LOCAL_IMAGE}

run:
	docker run -ti --rm -p 8080:8080 ${LOCAL_IMAGE}
