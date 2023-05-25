FROM python:3.9

WORKDIR /app

COPY requirements.txt ./

RUN pip3 install --no-cache-dir --index-url=https://pypi.org/simple/ -r requirements.txt


COPY . .
EXPOSE 5000
#CMD [ "python", "./app.py" ]
