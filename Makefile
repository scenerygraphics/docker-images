VULKAN  ?= 1.2.170.0
REGISTRY ?= scenerygraphics

.PHONY: all
all: nvidia-20.04

nvidia-20.04:
	$(DOCKER) build --pull \
		--build-arg VULKAN_VERSION="$(VULKAN)" \
		--tag "scenerygraphics/nvidia-vulkan:1.2.170.0-ubuntu20.04" \
		--file docker/Dockerfile-Nvidia-Ubuntu-20.04 .

