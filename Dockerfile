
FROM alpine:latest

RUN apk update && \
    apk add --no-cache python3 py3-pip libffi-dev libssl-dev

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]

