mkdir -p input && mkdir -p output
TIMESTAMP=$(date '+%Y%m%d%H%M%S')
nvidia-docker run -it \
  -v $PWD/.jupyter:/root/.jupyter \
  -v $PWD/input:/input \
  -v $PWD/output/$TIMESTAMP:/home \
  -p 8080:8080 \
  kaggle/python-gpu-build:latest \
  /bin/bash
