FROM python:3.7-slim

WORKDIR /usr/src/app

RUN install flask 

RUN install Flask-SQAlchemy

RUN psycopg2-binary

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

ENV FLASK_RUN_HOST=0.0.0.0

CMD ["python","app.py"]
