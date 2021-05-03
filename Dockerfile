FROM python:3.8-slim-buster

EXPOSE 5000
EXPOSE 80

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY . /app

CMD ["gunicorn", "app:app"]
