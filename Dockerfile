FROM python:3.9

WORKDIR /app
RUN pip install pymysql
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 5000
CMD [ "python", "./app.py" ]
