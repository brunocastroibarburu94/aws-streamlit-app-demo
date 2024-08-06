# Apline is the smallest version image with least attack surface area, it uses sh for its shell
# Bullseye has less compatibility issues, sadly there's very little support for Alpine in Streamlit
FROM  python:3.12.4-bullseye

#Install Requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt --no-cache-dir --break-system-packages
RUN rm /tmp/requirements.txt

# Expose ports
EXPOSE 8032

# Setup working directory
WORKDIR /root/project