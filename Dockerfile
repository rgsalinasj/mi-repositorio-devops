FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r /app/requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]