FROM python:3.9

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir  --default-timeout=1000 -r requirements.txt

COPY . .
EXPOSE 5000
CMD [ "python", "./app.py" ]
