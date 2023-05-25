FROM python:3.9

WORKDIR /app
RUN pip install --no-cache-dir pymysql
#RUN pip install --no-cache-dir mariadb
RUN pip install --no-cache-dir -U Werkzeug
RUN pip install --no-cache-dir Flask
RUN pip install --no-cache-dir markupsafe
#COPY requirements.txt ./

#RUN pip3 install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 5000
CMD [ "python", "./app.py" ]
