FROM python:3.9

WORKDIR /app
RUN pip3 install pymysql
RUN pip install -U Werkzeug
COPY requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 5000
CMD [ "python", "./app.py" ]
