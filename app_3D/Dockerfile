# Apline is the smallest version image with least attack surface area, it uses sh for its shell
# FROM python:3.9.19-alpine3.20

# Bullseye has less compatibility issues
FROM python:3.12.4-bullseye

# Requirements for 3D rendering
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN  apt-get install xvfb libgl1-mesa-glx -y

#Install Requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt --no-cache-dir
RUN rm /tmp/requirements.txt

# Expose ports
EXPOSE 8032

# Setup working directory
WORKDIR /root/project