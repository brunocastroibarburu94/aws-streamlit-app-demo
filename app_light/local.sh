PROJECT_NAME=ecs-streamlit-app-light

# Windows OS

# Build Image
docker build  -t ${PROJECT_NAME}-image .

# Remove container with same name
# docker rm ${PROJECT_NAME}-container 

# Start container
winpty docker run --rm -it \
--mount type=bind,source="$(PWD)",target=/root/project \
--name ${PROJECT_NAME}-container \
--entrypoint sh \
-p 8032:8032 \
${PROJECT_NAME}-image

# --entrypoint /bin/sh \
# --env-file ./.env \
# --mount type=bind,source="$HOME/.aws",target=/root/.aws \
# --mount type=bind,source="$HOME/.ssh",target=/root/.ssh \ 

# Enter running container
# winpty docker exec -it ${PROJECT_NAME}-container bash

# docker run ecs-streamlit-app-image /bin/sh