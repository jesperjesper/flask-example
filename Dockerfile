FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .
RUN apk add --no-cache build-base libffi-dev openssl-dev
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
