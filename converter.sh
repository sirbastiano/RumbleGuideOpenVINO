#!/bin/sh

docker run -it --device-cgroup-rule='c 189:* rmw' \
        --platform linux/amd64 \
        -v $PWD:/home/mnt \
        -v /dev/bus/usb:/dev/bus/usb \
        -u root \
        -w /home/mnt \
        --rm openvino/ubuntu18_dev:2020.3 \
        python3 /opt/intel/openvino_2020.3.194/deployment_tools/model_optimizer/mo.py \
        --input_model model.onnx --data_type FP16 --input_shape "[1,12,128,128]" \
        --progress --stream_output --output_dir .