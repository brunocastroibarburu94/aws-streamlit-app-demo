FROM alpine:3.19.1

RUN apk update && apk add \
    curl \
    python3 \
    py3-pip \
    py3-pyarrow \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app

RUN pip3 install --break-system-packages -r requirements.txt

CMD ["streamlit", "run", "app.py", "--server.port=8032", "--server.address=0.0.0.0"]