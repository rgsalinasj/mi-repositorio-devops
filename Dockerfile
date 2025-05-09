FROM python:3.9-slim-buster

WORKDIR /app

COPY app/requirements.txt .
RUN pip install -r requirements.txt

COPY app .

CMD ["python", "app.py"]