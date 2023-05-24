FROM python:3.9


WORKDIR /app

RUN git clone https://github.com/jesperjesper/flask-example.git

WORKDIR /app/flask-example

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]

