FROM python:3.9-slim-buster
#FROM python:3.9.5

WORKDIR /app
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

COPY . .

CMD ["gunicorn", "app:app"]
