# Define the base image and tag
IMAGE_NAME := openvino/ubuntu18_dev
IMAGE_TAG := 2020.3
FULL_IMAGE_NAME := $(IMAGE_NAME):$(IMAGE_TAG)

MOUNT := # Place here absolute path to the folder to mount


# Pull the Docker image
pull:
	docker pull $(FULL_IMAGE_NAME)

# Run the Docker container
run:
	docker run -it --rm --platform linux/amd64 --net=host --privileged -v /dev:/dev -v $(MOUNT):/home/mount/ -u user -w /home/ $(FULL_IMAGE_NAME) /bin/sh
