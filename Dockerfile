FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        build-essential \
        libffi-dev \
        libssl-dev \
        python3-dev \
        python3-pip \
        && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/jesperjesper/flask-example.git

WORKDIR /app/flask-example

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
