TIMESTAMP=$(date '+%Y%m%d%H%M%S')
docker run -it \
  -v $PWD/.jupyter:/root/.jupyter \
  -v $PWD/input:/input \
  -v $PWD/output/$TIMESTAMP:/home \
  -p 8080:8080 \
  kaggle/python-build:latest \
  /bin/bash
