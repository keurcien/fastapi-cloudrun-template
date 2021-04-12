FROM python:3.7-slim-buster

COPY requirements.txt /requirements.txt

RUN apt-get update \
    && pip install -r requirements.txt \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY app.py /app.py

ENTRYPOINT [ "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080" ]
