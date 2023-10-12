VULKAN  ?= 1.3.261.1
REGISTRY ?= scenerygraphics
TAG?=scenerygraphics/nvidia-vulkan:$(VULKAN)-ubuntu20.04-v2
DOCKER?=docker

.PHONY: all
all: nvidia-20.04

nvidia-20.04:
	docker build --pull \
		--build-arg VULKAN_VERSION="$(VULKAN)" \
		--tag $(TAG) \
		--file docker/Dockerfile-Nvidia-Ubuntu-20.04 .

