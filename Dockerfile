
FROM alpine:3.14

RUN apk update && \
    apk add --no-cache git \
        build-base \
        libffi-dev \
        openssl-dev \
        python3-dev \
        py3-pip \
WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]

