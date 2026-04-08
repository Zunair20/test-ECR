FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean

COPY requirements.txt .

# Force fresh install (no cache)
RUN pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]

# FROM python:3.11-slim

# WORKDIR /app

# RUN apt-get update && apt-get upgrade -y && apt-get clean

# COPY requirements.txt .
# RUN pip install --upgrade pip setuptools && pip install -r requirements.txt

# COPY app.py .

# CMD ["python", "app.py"]

# FROM python:3.8-slim
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY app.py .
# CMD ["python", "app.py"]
