IMAGE ?= localhost:3536/dagly-governed-widget-20261027
build:
	docker build --pull -t $(IMAGE):$(BUILD_VERSION) .
push:
	docker push $(IMAGE):$(BUILD_VERSION)
remove:
	-docker image rm $(IMAGE):$(BUILD_VERSION)
post-clean:
	@echo post-clean
.PHONY: build push remove post-clean
