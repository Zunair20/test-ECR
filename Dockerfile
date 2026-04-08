# FROM python:3.8-slim
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY app.py .
# CMD ["python", "app.py"]


FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean

COPY requirements.txt .
RUN pip install --upgrade pip setuptools && pip install -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
