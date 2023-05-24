FROM python:3.9

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        build-essential \
        libffi-dev \
        libssl-dev \
        python3-dev \
        python3-pip \
        gnutls-bin 

WORKDIR /app

RUN git clone git@github.com:jesperjesper/flask-example.git

WORKDIR /app/flask-example

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]

