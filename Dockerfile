FROM python:3.9-slim

RUN pip install -r requirements.txt

ENV APP_HOME /app

ENV PORT 5000

WORKDIR $APP_HOME

COPY . ./

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
